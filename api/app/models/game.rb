# frozen_string_literal: true

class Game < ApplicationRecord
  enum status: {
    waiting: 0,
    scheduled: 1,
    live: 2,
    complete: 3
  }

  before_validation :generate_join_code

  validates :join_code, presence: true, uniqueness: { if: :waiting? }
  validates :name, presence: true

  scope :active, -> { where.not(status: :complete) }

  has_many :teams

  after_create :create_spectator_team

  class << self
    AMBIGUOUS_LETTERS = %w[I O].freeze

    JOIN_CODE_LENGTH = 6

    def generate_join_code
      (("A".."Z").to_a - AMBIGUOUS_LETTERS).sample(JOIN_CODE_LENGTH).join
    end
  end

  private

  def generate_join_code
    self.join_code ||= self.class.generate_join_code
  end

  def create_spectator_team
    self.teams.create(name: "no team", spectator: true)
  end
end

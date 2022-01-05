class Game < ApplicationRecord
  enum status: [:open, :in_progress, :complete]

  before_validation :generate_join_code

  validates :join_code, presence: true, uniqueness: { if: :open? }
  validates :name, presence: true

  scope :active, -> { where(status: [:open, :in_progress]) }

  class << self
    AMBIGUOUS_LETTERS = %w[ I O ].freeze

    JOIN_CODE_LENGTH = 6

    def generate_join_code
      (('A'..'Z').to_a - AMBIGUOUS_LETTERS).sample(JOIN_CODE_LENGTH).join("")
    end
  end

  private

  def generate_join_code
    self.join_code ||= self.class.generate_join_code
  end
end

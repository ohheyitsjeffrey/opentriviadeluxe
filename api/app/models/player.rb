# frozen_string_literal: true

class Player < ApplicationRecord
  validates :name, presence: true
  belongs_to :team
end

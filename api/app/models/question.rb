# frozen_string_literal: true

class Question < ApplicationRecord
    validates :prompt, presence: true
    validates :order, uniqueness: {scope: [:game_id]}
    belongs_to: :game
end

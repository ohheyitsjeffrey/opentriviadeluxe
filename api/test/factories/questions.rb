# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    prompt { "What it is, friend?" }
    correct_answer { "nm" }
    order do
      if game.present?
        Question.where(game_id: game.id).count + 1
      else
        1
      end
    end
    game
  end
end

# frozen_string_literal: true

FactoryBot.define do
  factory :question do
    prompt { "What it is, friend?" }
    correct_answer { "nm" }
    order { 1 }
    game
  end
end

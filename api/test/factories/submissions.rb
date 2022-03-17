# frozen_string_literal: true

FactoryBot.define do
  factory :submission do
    response { Faker::Creature::Animal.name }
    status { 0 }
    team
    player { null }
    question
  end
end

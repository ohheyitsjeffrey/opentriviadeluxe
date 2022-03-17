# frozen_string_literal: true

FactoryBot.define do
  factory :submission do
    response { Faker::Creature::Animal.name }
    status { :working }
    team
    player { null }
    question
  end
end

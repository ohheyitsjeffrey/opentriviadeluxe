# frozen_string_literal: true

FactoryBot.define do
  factory :player do
    name { Faker::WorldCup.team }
    team
  end
end

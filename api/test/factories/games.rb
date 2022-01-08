# frozen_string_literal: true

FactoryBot.define do
  factory :game do
    sequence(:name) { |i| "game #{i}" }
  end
end

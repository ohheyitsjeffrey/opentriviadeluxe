# frozen_string_literal: true

module Types
  class GameType < BaseObject
    field :name, String, null: false
    field :join_code, String, null: false
    field :teams, [Types::TeamType], null: false
  end
end

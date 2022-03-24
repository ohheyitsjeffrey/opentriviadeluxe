# frozen_string_literal: true

module Types
  class TeamType < Types::BaseObject
    field :name, String, null: false
    field :game, Types::GameType, null: false
    field :id, ID, null: false
  end
end

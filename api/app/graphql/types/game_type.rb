# frozen_string_literal: true

module Types
  class GameType < BaseObject
    field :name, String, null: false
    field :join_code, String, null: false
    field :id, ID, null: false
  end
end

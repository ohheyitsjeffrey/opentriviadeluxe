# frozen_string_literal: true

module Types
  class TeamType < BaseObject
    field :id, ID, null: false
    field :name, String, null: false
    field :spectator, Boolean, null: false
  end
end

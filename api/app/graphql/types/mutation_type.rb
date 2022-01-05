# frozen_string_literal: true

module Types
  class MutationType < Types::BaseObject
    field :create_game,
          mutation: Mutations::CreateGame,
          null: false,
          description: 'Create a new game'
  end
end

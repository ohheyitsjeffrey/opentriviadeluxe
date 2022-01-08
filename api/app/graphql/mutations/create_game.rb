# frozen_string_literal: true

module Mutations
  class CreateGame < BaseMutation
    # TODO: (dman 2022-01-04) We should probably infer this classname and define this argument
    #                         in BaseMuatation.  For now, keep things explicit.
    argument :attributes, Attributes::CreateGameAttributes, required: true

    field :game, Types::GameType, null: false

    def resolve(attributes:)
      game = Game.create name: attributes.name

      if game.valid?
        { game: game }
      else
        raise_error_for! game
      end
    end
  end
end

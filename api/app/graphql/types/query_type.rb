# frozen_string_literal: true

module Types
  class QueryType < Types::BaseObject
    field :game_for_join_code, Types::GameType do
      argument :join_code, String, required: true
    end

    def game_for_join_code(join_code:)
      Game.find_by!(join_code: join_code)
    end
  end
end

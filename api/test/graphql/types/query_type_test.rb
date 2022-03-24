# frozen_string_literal: true

require "test_helper"

module Types
  class QueryTypeTest < ActiveSupport::TestCase
    test "returns a game with teams for a join code" do
      game = create(:game)

      query = <<~GQL
        query GameForJoinCode($joinCode: String!) {
          gameForJoinCode(joinCode: $joinCode) {
            id
            name
            teams {
              id
            }
          }
        }
      GQL

      result = TriviaSchema.execute(query: query, variables: { joinCode: game.join_code })

      assert_nil(result["errors"])
      assert_nil(result.dig("data", "errors"))

      returned_game = result.dig("data", "gameForJoinCode")

      expected_response = {
        "id" => game.to_param,
        "name" => game.name,
        "teams" => game.teams.map { |team| { "id" => team.to_param } }
      }

      assert_equal(expected_response, returned_game)
    end
  end
end

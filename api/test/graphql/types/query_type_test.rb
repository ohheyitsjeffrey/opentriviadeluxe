# frozen_string_literal: true

require "test_helper"

module Types
  class QueryTypeTest < ActiveSupport::TestCase
    test "returns a game for a join code" do
      game = create(:game)

      query = <<~GQL
        query GameForJoinCode($joinCode: String!) {
          gameForJoinCode(joinCode: $joinCode) {
            id
            name
          }
        }
      GQL

      result = TriviaSchema.execute(query: query, variables: { joinCode: game.join_code })

      assert_nil(result["errors"])
      assert_nil(result.dig("data", "errors"))

      returned_game = result.dig("data", "gameForJoinCode")

      assert_equal({ "id" => game.to_param, "name" => game.name }, returned_game)
    end
  end
end

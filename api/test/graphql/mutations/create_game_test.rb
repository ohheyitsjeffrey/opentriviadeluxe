# frozen_string_literal: true

require 'test_helper'

module Mutations
  class CreateGameTest < ActiveSupport::TestCase
    test 'CreateGame creates a new Game instance' do
      name = 'My sick game of trivia, brah'

      result = execute(name: name)

      assert_nil result['errors']

      result_game = result.dig('data', 'createGame', 'game')

      assert result_game.present?

      result_id = result_game['id']
      result_name = result_game['name']
      result_join_code = result_game['joinCode']

      assert_equal name, result_name
      assert result_join_code.present? # We'll check it's value after we read the model instance.

      result_game_instance = Game.find(result_id)

      assert_equal name, result_game_instance.name

      assert_equal result_join_code, result_game_instance.join_code
    end

    test 'CreateGame returns errors' do
      result = execute(name: nil)

      result_errors = result['errors']

      assert result_errors.present?

      assert_match /name \(Expected value to not be null\)/, result_errors.first['message']
    end

    private

    def execute(name:)
      query = <<-GQL
        mutation CreateGame($attributes: CreateGameAttributes!) {
          createGame(attributes: $attributes) {
            game {
              id
              name
              joinCode
            }
          }
        }
      GQL

      TriviaSchema.execute(query: query, variables: { attributes: { name: name } }).to_h
    end
  end
end

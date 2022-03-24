# frozen_string_literal: true

require "test_helper"

class GameTest < ActiveSupport::TestCase
  test "generates a unique join code on creation" do
    game = create :game

    assert game.join_code.present?

    assert_equal 6, game.join_code.length
  end

  test "validates presence of name" do
    game = build :game, name: nil

    assert_not game.valid?

    assert_equal ["can't be blank"], game.errors[:name]
  end

  test "requires join codes to be unique unless the game is complete" do
    existing_game = create :game
    game = build :game, join_code: existing_game.join_code

    assert_not game.valid?
    assert_equal ["has already been taken"], game.errors[:join_code]

    game.status = :complete

    assert game.valid?
  end

  test "creates a spectator team on create" do
    game = create :game, name: "yeah boi"

    assert game.valid?
    
    assert_equal 1, game.teams.count 
    assert game.teams.first.spectator?
  end
end

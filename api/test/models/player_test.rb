# frozen_string_literal: true

require 'test_helper'

class PlayerTest < ActiveSupport::TestCase
  test 'Requires a name' do
    player = build :player, name: nil

    assert_not player.valid?
    assert_equal ["can't be blank"], player.errors[:name]

    player.name = 'Thurston'
    assert player.valid?
  end

  test 'Has a game through team' do
    player = create :player
    assert player.game.present?
    assert_equal player.team.game, player.game
  end
end

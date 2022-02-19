# frozen_string_literal: true

require "test_helper"

class TeamTest < ActiveSupport::TestCase
  test "requires name to be present" do
    team = build(:team, name: nil)

    assert_not team.valid?

    team.name = ""

    assert_not team.valid?

    team.name = "some name"

    assert team.valid?
  end

  test "belongs to a game" do
    team = create(:team)

    assert team.game.present?
    assert team.game.is_a?(Game)
  end
end

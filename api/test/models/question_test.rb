# frozen_string_literal: true

require "test_helper"

class QuestionTest < ActiveSupport::TestCase
  test "order value must be unique per game" do
    game = create :game
    question_1 = build :question, game: game
    question_2 = build :question, game: game

    question_1.order = 55
    question_2.order = 55

    question_1.save

    assert_not question_2.valid?
    assert_equal ["has already been taken"], question_2.errors[:order]

    other_game = create :game
    question_2.game = other_game

    assert question_2.valid?
  end
end

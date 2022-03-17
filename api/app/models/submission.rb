# frozen_string_literal: true

class Submission < ApplicationRecord
  belongs_to :player
  belongs_to :team
  belongs_to :question

  enum status: {
    working: 0,
    submitted: 1
  }
end

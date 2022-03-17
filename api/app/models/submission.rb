class Submission < ApplicationRecord
  belongs_to :player
  belongs_to :team
  belongs_to :question
end

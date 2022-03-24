# frozen_string_literal: true

module Mutations
  module Attributes
    class CreateTeamAttributes < BaseAttributes
      description "The attributes to create a Game with"

      argument :name, String, required: true
      argument :game_id, ID, required: true
    end
  end
end

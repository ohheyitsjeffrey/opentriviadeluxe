module Mutations
  module Attributes
    class CreateGameAttributes < BaseAttributes
      description "The attributes to create a Game with"

      argument :name, String, required: true
    end
  end
end

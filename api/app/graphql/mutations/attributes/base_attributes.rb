# frozen_string_literal: true

module Mutations
  module Attributes
    class BaseAttributes < GraphQL::Schema::InputObject
      argument_class Types::BaseArgument
    end
  end
end

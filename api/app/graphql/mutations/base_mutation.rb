# frozen_string_literal: true

module Mutations
  class BaseMutation < GraphQL::Schema::Mutation
    argument_class Types::BaseArgument
    field_class Types::BaseField
    object_class Types::BaseObject

    def raise_error_for!(model)
      raise GraphQL::ExecutionError, model.errors.full_messages.join(", ")
    end
  end
end

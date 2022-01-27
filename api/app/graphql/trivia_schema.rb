# frozen_string_literal: true

class TriviaSchema < GraphQL::Schema
  mutation(Types::MutationType)
  query(Types::QueryType)

  # For batch-loading (see https://graphql-ruby.org/dataloader/overview.html)
  use GraphQL::Dataloader

  # https://graphql-ruby.org/api-doc/1.13.6/GraphQL/Subscriptions/ActionCableSubscriptions
  use GraphQL::Subscriptions::ActionCableSubscriptions

  # GraphQL-Ruby calls this when something goes wrong while running a query:

  # Union and Interface Resolution
  def self.resolve_type(_abstract_type, _obj, _ctx)
    # TODO: Implement this method
    # to return the correct GraphQL object type for `obj`
    raise(GraphQL::RequiredImplementationMissingError)
  end
end

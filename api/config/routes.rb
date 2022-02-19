# frozen_string_literal: true

Rails.application.routes.draw do
  post "/graphql", to: "graphql#execute"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  mount GraphiQL::Rails::Engine, at: "/graphiql", graphql_path: "graphql#execute" if Rails.env.development?
  # Defines the root path route ("/")
  # root "articles#index"
end

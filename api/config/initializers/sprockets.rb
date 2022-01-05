# frozen_string_literal: true

# Required for graphiql-rails to work in development

require 'sprockets/railtie' if Rails.env.development?

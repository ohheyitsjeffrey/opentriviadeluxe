#!/bin/bash
set -e

# Remove a potentially pre-existing server.pid for Rails.
rm -f /trivia/tmp/pids/server.pid

bin/rake db:create
bin/rake db:migrate

if [[ "${RAILS_ENV}" == "development" ]]; then
  bin/rake db:seed
fi

# Then exec the container's main process (what's set as CMD in the Dockerfile).
exec "$@"

#!/usr/bin/env bash
set -o errexit

bundle install
bundle exec rails assets:precompile
bundle exec rails assets:clean
# keep migrations here if you're on the Free plan
bundle exec rails db:migrate

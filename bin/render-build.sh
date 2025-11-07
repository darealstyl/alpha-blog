#!/usr/bin/env bash
set -o errexit
bundle install
bin/rails assets:precompile
bin/rails assets:clean
# Keep this here on Free; move it to preDeployCommand once you’re on a paid plan:
bin/rails db:migrate

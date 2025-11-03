#!/usr/bin/env bash
set -e
bundle install --without development test
bundle exec rails db:migrate
bundle exec rails assets:precompile
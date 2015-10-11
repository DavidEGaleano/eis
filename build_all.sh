#!/usr/bin/env sh
set -e
cd ejemplo_banco
bundle install
bundle exec rake
cd ..
cd kata_chopper
bundle install
bundle exec rake
cd ..
cd kata_piedra-papel-tijeras
bundle install
bundle exec rake
cd ..
cd base_cucumber
bundle install
bundle exec rake

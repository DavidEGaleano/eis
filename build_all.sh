#!/usr/bin/env sh
set -e
#cd ejemplo_banco
#bundle install
#bundle exec rake
#cd ..
cd kata_chopper
bundle install
bundle exec rake
cd ..
#cd kata_piedra-papel-tijera
#bundle install
#bundle exec rake
#cd ..
cd kata_batallanaval
bundle install
bundle exec rake

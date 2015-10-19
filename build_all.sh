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
cd kata_piedra_papel_tijera
bundle install
bundle exec rake
cd ..
cd kata_batallanaval
bundle install
bundle exec rake
cd ..
cd kata_calculadora
bundle install
bundle exec rake


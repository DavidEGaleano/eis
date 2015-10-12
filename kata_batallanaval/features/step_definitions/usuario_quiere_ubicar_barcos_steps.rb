require_relative '../../model/batalla_naval'
require_relative '../../model/game_core'
require_relative '../../model/tablero'
require_relative '../../model/player'
require_relative '../../model/caja_de_barcos'
require_relative '../../model/barco'
require_relative '../../model/destructor'
require_relative '../../model/crucero'
require_relative '../../model/submarino'


Given(/^un tablero vacio$/) do
  @batalla_naval = BatallaNaval.new
  @batalla_naval.nuevo_juego
end

When(/^selecciono un barco destructor$/) do
  @batalla_naval.player_1_selecciona_barco("destructor")
end

Then(/^coloco un barco en la posicion (\d+),(\d+)$/) do |arg1, arg2|
  @batalla_naval.player_1_coloca_un_barco_en(arg1.to_i,arg2.to_i)
end

Given(/^un tablero con un barco destructor en la posicion (\d+),(\d+)$/) do |arg1, arg2|
  @batalla_naval = BatallaNaval.new
  @batalla_naval.nuevo_juego
  @batalla_naval.player_1_selecciona_barco("destructor")
  @batalla_naval.player_1_coloca_un_barco_en(arg1.to_i,arg2.to_i)
end

Then(/^no puedo colocar un barco en la posicion (\d+),(\d+)$/) do |arg1, arg2|
  expect(@batalla_naval.player_1_coloca_un_barco_en(arg1.to_i,arg2.to_i)).to eql "coordenada invalida"
end

Then(/^no puedo colocar un barco en la coordenada (\d+),(\d+) que esta fuera del tablero$/) do |arg1, arg2|
  expect(@batalla_naval.player_1_coloca_un_barco_en(arg1.to_i,arg2.to_i)).to eql "coordenada invalida"
end


require_relative '../../model/batalla_naval'
require_relative '../../model/game_core'
require_relative '../../model/tablero'
require_relative '../../model/player'
require_relative '../../model/caja_de_barcos'
require_relative '../../model/barco'
require_relative '../../model/destructor'
require_relative '../../model/crucero'
require_relative '../../model/submarino'

Given(/^un juego comenzado, con player (\d+) y player (\d+) terminado de colocar sus barcos$/) do |arg1, arg2|
  @batalla_naval = BatallaNaval.new
  @batalla_naval.nuevo_juego
  @batalla_naval.player_1_selecciona_barco("destructor")
  @batalla_naval.player_1_coloca_un_barco_en(1,1)
  @batalla_naval.player_1_selecciona_barco("crucero")
  @batalla_naval.player_1_coloca_un_barco_en(2,1)
  @batalla_naval.player_1_selecciona_barco("submarino")
  @batalla_naval.player_1_coloca_un_barco_en(3,1)
  @batalla_naval.player_2_selecciona_barco("destructor")
  @batalla_naval.player_2_coloca_un_barco_en(4,1)
  @batalla_naval.player_2_selecciona_barco("crucero")
  @batalla_naval.player_2_coloca_un_barco_en(5,1)
  @batalla_naval.player_2_selecciona_barco("submarino")
  @batalla_naval.player_2_coloca_un_barco_en(5,5)
end

When(/^es turno del player (\d+)$/) do |arg1|
  @batalla_naval.turno_player(arg1)
end

Then(/^dispara a la coordenada (\d+),(\d+) golpea el agua$/) do |arg1, arg2|
  expect(@batalla_naval.player_dispara_a_la_coordenada(arg1.to_i,arg2.to_i)).to eq "agua!"
end

Then(/^dispara a la coordenada (\d+),(\d+) golpea un barco enemigo pero no lo hunde$/) do |arg1, arg2|
  expect(@batalla_naval.player_dispara_a_la_coordenada(arg1.to_i,arg2.to_i)).to eq "Crucero del jugador 2 ha sido impactado!"
end



require_relative '../../model/batalla_naval'
require_relative '../../model/game_core'
require_relative '../../model/tablero'
require_relative '../../model/player'
require_relative '../../model/caja_de_barcos'
require_relative '../../model/barco'


Given(/^un tablero vacio$/) do
  @batalla_naval = BatallaNaval.new
  @batalla_naval.nuevo_juego
end

When(/^selecciono un barco$/) do
  @batalla_naval.player_1_selecciona_barco("destructor")
end

Then(/^coloco un barco$/) do
  @batalla_naval.player_1_coloca_un_barco_en(1,1)
end
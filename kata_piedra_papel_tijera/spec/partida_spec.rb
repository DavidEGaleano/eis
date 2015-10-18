require 'rspec' 
require_relative '../model/piedra'
require_relative '../model/empate'
require_relative '../model/gana'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/pierde'
require_relative '../model/mono'
require_relative '../model/ronda'
require_relative '../model/definicion'
require_relative '../model/juez'
require_relative '../model/partida'

describe 'Partida' do
  
  let(:partida){ Partida.new }

  it 'usando piedra vs piedra, debe dar empate' do
    partida.turno_player_1!
    partida.usa_piedra!
    partida.turno_player_2!
    partida.usa_piedra!
    expect(partida.jugar!).to eq "empate"
  end

  it 'usando papel vs tijera, debe dar jugador 2 gana' do
    partida.turno_player_1!
    partida.usa_papel!
    partida.turno_player_2!
    partida.usa_tijera!
    expect(partida.jugar!).to eq "jugador 2 gana"
  end

end
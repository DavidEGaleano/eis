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

describe 'Juez' do
  
  let(:juez) { Juez.new }
  let(:piedra) { Piedra.new }
  let(:tijera) { Tijera.new }
  let(:papel) { Papel.new }
  let(:mono) { Mono.new }
  let(:ronda_1) { Ronda.new }
  let(:ronda_2) { Ronda.new }
  let(:ronda_3) { Ronda.new }


  it 'jugada una sola ronda, debe dar "Juego sin definir" ' do
    ronda_1.jugador_1_usa(piedra)
    ronda_1.jugador_2_usa(piedra)
    expect(juez.evaluar(ronda_1)).to eq "Juego sin definir"
  end

  it 'jugadas 2 rondas a empate, debe dar juego sin definir' do
    ronda_1.jugador_1_usa(piedra)
    ronda_1.jugador_2_usa(piedra)
    expect(juez.evaluar(ronda_1)).to eq "Juego sin definir"
    ronda_2.jugador_1_usa(piedra)
    ronda_2.jugador_2_usa(piedra)
    expect(juez.evaluar(ronda_2)).to eq "Juego sin definir"
  end
end
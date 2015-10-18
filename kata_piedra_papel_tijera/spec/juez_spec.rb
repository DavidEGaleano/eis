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
  
  
  let(:piedra) { Piedra.new }
  let(:tijera) { Tijera.new }
  let(:papel) { Papel.new }
  let(:mono) { Mono.new }
  let(:ronda_1) { Ronda.new }
  let(:ronda_2) { Ronda.new }
  let(:ronda_3) { Ronda.new }
  let(:juez) { Juez.new }

  it 'jugada una sola ronda, debe dar empate' do
    ronda_1.jugador_1_usa(piedra)
    ronda_1.jugador_2_usa(piedra)
    expect(juez.evaluar!(ronda_1)).to eq "empate"
  end

  it 'jugadas 2 rondas a empate, debe dar empate' do
    ronda_1.jugador_1_usa(piedra)
    ronda_1.jugador_2_usa(piedra)
    expect(juez.evaluar!(ronda_1)).to eq "empate"
    ronda_2.jugador_1_usa(piedra)
    ronda_2.jugador_2_usa(piedra)
    expect(juez.evaluar!(ronda_2)).to eq "empate"
  end

  it 'jugadas 2 rondas que gana el jugador 1, debe dar "jugador 1 gana"' do
    ronda_1.jugador_1_usa(papel)
    ronda_1.jugador_2_usa(piedra)
    expect(juez.evaluar!(ronda_1)).to eq "jugador 1 gana"
    ronda_2.jugador_1_usa(papel)
    ronda_2.jugador_2_usa(piedra)
    expect(juez.evaluar!(ronda_2)).to eq "jugador 1 gana"
  end

  it 'jugadas 3 rondas que gana el jugador 1, debe dar "jugador 1 gana"' do
    ronda_1.jugador_1_usa(papel)
    ronda_1.jugador_2_usa(piedra)
    expect(juez.evaluar!(ronda_1)).to eq "jugador 1 gana"
    ronda_1.jugador_1_usa(piedra)
    ronda_1.jugador_2_usa(papel)
    expect(juez.evaluar!(ronda_1)).to eq "empate"
    ronda_2.jugador_1_usa(papel)
    ronda_2.jugador_2_usa(piedra)
    expect(juez.evaluar!(ronda_2)).to eq "jugador 1 gana"
  end

  it 'jugadas 2 rondas que gana el jugador 2, debe dar "jugador 2 gana"' do
    ronda_1.jugador_1_usa(piedra)
    ronda_1.jugador_2_usa(papel)
    expect(juez.evaluar!(ronda_1)).to eq "jugador 2 gana"
    ronda_2.jugador_1_usa(piedra)
    ronda_2.jugador_2_usa(papel)
    expect(juez.evaluar!(ronda_2)).to eq "jugador 2 gana"
  end

end
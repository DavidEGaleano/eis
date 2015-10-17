require 'rspec' 
require_relative '../model/piedra'
require_relative '../model/empate'
require_relative '../model/gana'
require_relative '../model/tijera'
require_relative '../model/definicion'
require_relative '../model/papel'
require_relative '../model/pierde'
require_relative '../model/mono'
require_relative '../model/ronda'


describe 'Ronda' do

  let(:piedra) { Piedra.new }
  let(:tijera) { Tijera.new }
  let(:papel) { Papel.new }
  let(:mono) { Mono.new }
  let(:ronda) { Ronda.new }


  it 'dada una jugada, deberia devolver el resultado de la ronda' do
    ronda.jugador_1_usa(piedra)
    ronda.jugador_2_usa(papel)
    expect(ronda.dar_resultado).to be_kind_of(Definicion)
  end

end
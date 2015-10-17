require 'rspec' 
require_relative '../model/piedra'
require_relative '../model/empate'
require_relative '../model/gana'
require_relative '../model/tijera'
require_relative '../model/definicion'
require_relative '../model/papel'
require_relative '../model/pierde'
require_relative '../model/mono'


describe 'Piedra' do

  let(:piedra) { Piedra.new }
  let(:tijera) { Tijera.new }
  let(:papel) { Papel.new }
  let(:mono) { Mono.new }


  it 'tijera contra piedra deberia perder' do
    expect(tijera.juega_contra(piedra)).to be_kind_of(Pierde)
  end

  it 'tijera contra tijera deberia empatar' do
    expect(tijera.juega_contra(tijera)).to be_kind_of(Empate)
  end

  it 'tijera contra papel deberia ganar' do
    expect(tijera.juega_contra(papel)).to be_kind_of(Gana)
  end

end
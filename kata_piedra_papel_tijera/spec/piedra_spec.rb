require 'rspec' 
require_relative '../model/piedra'
require_relative '../model/empate'
require_relative '../model/gana'
require_relative '../model/tijera'
require_relative '../model/definicion'
require_relative '../model/papel'
require_relative '../model/pierde'

describe 'Piedra' do

  let(:piedra) { Piedra.new }
  let(:tijera) { Tijera.new }
  let(:papel) { Papel.new }


  it 'piedra contra piedra deberia empatar' do
    expect(piedra.juega_contra(piedra)).to be_kind_of(Empate)
  end

  it 'piedra contra tijera deberia ganar' do
    expect(piedra.juega_contra(tijera)).to be_kind_of(Gana)
  end

  it 'piedra contra papel deberia perder' do
    expect(piedra.juega_contra(papel)).to be_kind_of(Pierde)
  end

end
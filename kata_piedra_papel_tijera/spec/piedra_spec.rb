require 'rspec' 
require_relative '../model/piedra'
require_relative '../model/empate'
require_relative '../model/gana'
require_relative '../model/tijera'
require_relative '../model/definicion'

describe 'Chopper' do

  let(:piedra) { Piedra.new }  

  it 'piedra contra piedra deberia empatar' do
    expect(piedra.juega_contra(piedra)).to be_kind_of(Empate)
  end

  it 'piedra contra tijera deberia ganar' do
    expect(piedra.juega_contra(Tijera.new)).to be_kind_of(Gana)
  end
end
require 'rspec' 
require_relative '../model/piedra'
require_relative '../model/empate'
require_relative '../model/gana'
require_relative '../model/tijera'
require_relative '../model/definicion'
require_relative '../model/papel'
require_relative '../model/pierde'
require_relative '../model/mono'


describe 'Papel' do

  let(:piedra) { Piedra.new }
  let(:tijera) { Tijera.new }
  let(:papel) { Papel.new }
  let(:mono) { Mono.new }


  it 'papel contra piedra deberia ganar' do
    expect(papel.juega_contra(piedra)).to be_kind_of(Gana)
  end

  it 'papel contra papel deberia empatar' do
    expect(papel.juega_contra(papel)).to be_kind_of(Empate)
  end

  it 'papel contra tijera deberia perder' do
    expect(papel.juega_contra(tijera)).to be_kind_of(Pierde)
  end

  it 'papel contra mono deberia perder' do
    expect(papel.juega_contra(mono)).to be_kind_of(Pierde)
  end
end
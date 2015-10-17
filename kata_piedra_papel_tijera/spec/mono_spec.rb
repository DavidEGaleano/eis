require 'rspec' 
require_relative '../model/piedra'
require_relative '../model/empate'
require_relative '../model/gana'
require_relative '../model/tijera'
require_relative '../model/definicion'
require_relative '../model/papel'
require_relative '../model/pierde'
require_relative '../model/mono'


describe 'Mono' do

  let(:piedra) { Piedra.new }
  let(:tijera) { Tijera.new }
  let(:papel) { Papel.new }
  let(:mono) { Mono.new }


  it 'mono contra mono deberia empatar' do
    expect(mono.juega_contra(mono)).to be_kind_of(Empate)
  end

  it 'mono contra tijera deberia perder' do
    expect(mono.juega_contra(tijera)).to be_kind_of(Pierde)
  end


end
require 'rspec' 
require_relative '../model/piedra'
require_relative '../model/empate'

describe 'Chopper' do

  let(:piedra) { Piedra.new }  

  it 'piedra contra piedra deberia empatar' do
    expect(piedra.juega_contra(piedra)).to be_kind_of(Empate)
  end

end
require 'rspec'
require_relative '../app/models/calculadora'

describe 'Calculadora' do

  let(:calculadora) { Calculadora.new }  

  it 'dado 1 operando 1 y otro operando 2, al sumarlos deberia dar 3' do
    expect(calculadora.sumar(1,2)).to eq 3
  end

end
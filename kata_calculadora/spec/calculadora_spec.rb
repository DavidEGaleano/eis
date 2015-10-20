require 'rspec'
require_relative '../app/models/calculadora'

describe 'Calculadora' do

  let(:calculadora) { Calculadora.new }  

  it 'dado un operando 1 y otro operando 2, al sumarlos deberia dar 3' do
    expect(calculadora.sumar(1,2)).to eq 3
  end

  it 'no hizo operaciones, deberia dar 0' do
    expect(calculadora.cantidad_operaciones).to eq 0
  end

  it 'hizo una operacion, deberia dar 1' do
    calculadora.sumar(1,2)
    expect(calculadora.cantidad_operaciones).to eq 1
  end

  it 'dado un operando 1 y otro operando 2, al restarlo deberida dar -1' do 
    expect(calculadora.restar(1,2)).to eq -1
  end

  it 'reseteada la memoria, debe dar 0' do
    expect(calculadora.resetear_memoria).to eq 0  
  end

end
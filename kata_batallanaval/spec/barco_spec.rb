require 'rspec'
require_relative '../model/barco'

describe 'Barco' do

  let(:barco) { Barco.new("1",3) }  

  it 'dado un barco tamaño 3, debe retornar una resistencia de 3' do
    expect(barco.dar_resistencia).to eq 3
  end

  it 'cuando es golpeado el barco debe retornar 2 al pedir su resistencia' do
    barco.fue_golpeado!
    expect(barco.dar_resistencia).to eq 2
  end

  it 'cuando es golpeado la misma cantidad de veces que su resistencia, debe retornar que esa destruido' do
    barco.fue_golpeado!
    barco.fue_golpeado!
    barco.fue_golpeado!
    expect(barco.destruido?).to be true
  end

  it 'cuando es golpeado pero no supera su resistencia, debe retornar que no esta destruido' do
    barco.fue_golpeado!
    expect(barco.destruido?).to be false
  end
end
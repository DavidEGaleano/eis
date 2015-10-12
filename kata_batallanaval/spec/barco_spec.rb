require 'rspec'
require_relative '../model/barco'

describe 'Barco' do

  let(:barco) { Barco.new("1",3) }  

  it 'dado un barco tamaño 3, debe retornar 3' do
    expect(barco.tamaño).to eq 3
  end

  it 'cuando es golpeado el barco debe retornar 2' do
    barco.fue_golpeado!
    expect(barco.tamaño).to eq 2
  end

  it 'cuando es golpeado la misma cantidad de veces que su tamaño, debe retornar que esa destruido' do
    barco.fue_golpeado!
    barco.fue_golpeado!
    barco.fue_golpeado!
    expect(barco.destruido?).to be true
  end
end
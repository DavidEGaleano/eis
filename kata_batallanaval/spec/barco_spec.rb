require 'rspec'
require_relative '../model/barco'

describe 'Tablero' do

  let(:barco) { Barco.new("1",3) }  

  it 'dado un barco tamaño 3, debe retornar 3' do
    expect(barco.tamaño).to eq 3
  end

end
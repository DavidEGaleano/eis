require 'rspec'
require_relative '../model/tablero'
require_relative '../model/barco'

describe 'Tablero' do

  let(:tablero) { Tablero.new }  

  it 'dado un talero vacio y la coordenada 1,1 deberia dar "celda"' do
    expect(tablero.dar_celda(1,1)).to eq "celda"
  end

  it 'dado un barco y una coordenada 1,1 deberia poner el barco en la celda' do
    tablero.colocar_barco(1,1,Barco.new)
    expect(tablero.dar_celda(1,1)) == (Barco)
  end

  it 'dado un barco y una coordenada 1,1 que tiene un barco, deberia de devolver que "celda ocupada"' do
  	tablero = Tablero.new
  	tablero.colocar_barco(1,1,Barco.new)
  	expect(tablero.colocar_barco(1,1,Barco.new)).to eq "celda ocupada"
  end

end
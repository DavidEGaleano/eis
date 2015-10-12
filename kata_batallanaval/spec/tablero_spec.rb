require 'rspec'
require_relative '../model/tablero'
require_relative '../model/barco'

describe 'Tablero' do

  let(:tablero) { Tablero.new }  

  it 'dado un talero vacio y la coordenada 1,1 deberia dar "celda"' do
    expect(tablero.dar_celda(1,1)).to eq "celda"
  end

  it 'dado un barco y una coordenada 1,1 deberia poner el barco en la celda' do
    tablero.colocar_barco(1,1,Barco.new("1",3))
    expect(tablero.dar_celda(1,1)) == (Barco)
  end

  it 'dado un barco y una coordenada 1,1 que tiene un barco, deberia de devolver que "coordenada invalida"' do
  	tablero = Tablero.new
  	tablero.colocar_barco(1,1,Barco.new("1",3))
  	expect(tablero.colocar_barco(1,1,Barco.new("1",3))).to eq "coordenada invalida"
  end
	
  it 'dada una coordenada 10,10 que esta fuera de los limites, deberia devolver "coordenada invalida"' do
    expect(tablero.colocar_barco(10,10,Barco.new("1",3))).to eq "coordenada invalida"
  end

end
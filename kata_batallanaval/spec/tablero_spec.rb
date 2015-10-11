require 'rspec'
require_relative '../model/tablero'

describe 'Tablero' do

	let(:tablero) { Tablero.new }  

	it 'dado un talero vacio y la coordenada 1,1 deberia dar "celda"' do
		expect(tablero.dar_celda(1,1)).to eq "celda"
	end

end
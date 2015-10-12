require 'rspec'
require_relative '../model/caja_de_barcos'
require_relative '../model/barco'

describe 'CajaDeBarcos' do

	let(:caja_de_barcos) { CajaDeBarcos.new }  

	it 'dado un nombre de barco y una caja nueva, deberia de dar un barco' do
		@barco = caja_de_barcos.obtener_barco("destructor")
		expect(@barco) == (Barco)
	end

	

end
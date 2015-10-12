require 'rspec'
require_relative '../model/caja_de_barcos'
require_relative '../model/barco'
require_relative '../model/destructor'
require_relative '../model/crucero'
require_relative '../model/submarino'

describe 'CajaDeBarcos' do

	let(:caja_de_barcos) { CajaDeBarcos.new("1") }  

	it 'dado un nombre de barco y una caja nueva, deberia de dar un destructor' do
		@barco = caja_de_barcos.obtener_barco("destructor")
		expect(@barco) == (Destructor)
	end

end
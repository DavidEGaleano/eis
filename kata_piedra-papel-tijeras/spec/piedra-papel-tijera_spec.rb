require 'rspec' 
require_relative '../model/partida'
require_relative '../model/papel'
require_relative '../model/piedra'

describe 'Piedra-papel-tijeras' do

	let(:partida) { Partida.new(3) }  

	it 'jugador 1 gana la ronda usando papel' do
		partida.jugador1usa!(Papel.new)
		partida.jugador2usa!(Piedra.new)
		expect(partida.jugar_ronda(0)).to eq "jugador1gana"
	end

end
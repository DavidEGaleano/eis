require 'rspec' 
require_relative '../model/partida'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'

describe 'Piedra-papel-tijeras' do

	let(:partida) { Partida.new(3) }  

	it 'jugador 1 gana la ronda uno' do
		partida.jugador1usa!(Papel.new)
		partida.jugador2usa!(Piedra.new)
		expect(partida.jugar_ronda(0)).to eq "jugador1gana"
	end
end
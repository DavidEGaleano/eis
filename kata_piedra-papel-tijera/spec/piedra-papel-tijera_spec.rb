require 'rspec' 
require_relative '../model/partida'
require_relative '../model/piedra'
require_relative '../model/tijera'
require_relative '../model/papel'
require_relative '../model/mono'

describe 'Piedra-papel-tijeras' do

	let(:partida) { Partida.new(3) }  

	it 'jugador 1 gana la ronda uno' do
		partida.jugador1usa!(Papel.new)
		partida.jugador2usa!(Piedra.new)
		expect(partida.jugar_ronda(0)).to eq "jugador1gana"
	end

	it 'jugador 2 gana la ronda uno' do
		partida.jugador2usa!(Tijera.new)
		partida.jugador1usa!(Papel.new)
		expect(partida.jugar_ronda(0)).to eq "jugador2gana"
	end

	it 'la ronda uno es empate' do
		partida.jugador1usa!(Tijera.new)
		partida.jugador2usa!(Tijera.new)
		expect(partida.jugar_ronda(0)).to eq "empate"
	end

	it 'Jugador1 gana la ronda uno usando mono' do
		partida.jugador1usa!(Mono.new)
		partida.jugador2usa!(Papel.new)
		expect(partida.jugar_ronda(0)).to eq "jugador1gana"
	end
end
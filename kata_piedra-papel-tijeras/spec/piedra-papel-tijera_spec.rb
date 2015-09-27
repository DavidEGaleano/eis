require 'rspec' 
require_relative '../model/partida'
require_relative '../model/papel'
require_relative '../model/piedra'
require_relative '../model/tijera'

describe 'Piedra-papel-tijeras' do

	let(:partida) { Partida.new(3) }  

	it 'jugador 1 gana la ronda usando papel' do
		partida.jugador1usa!(Papel.new)
		partida.jugador2usa!(Piedra.new)
		expect(partida.jugar_ronda(0)).to eq "jugador1gana"
	end

	it 'jugador 1 pierde la ronda usando papel' do
		partida.jugador1usa!(Papel.new)
		partida.jugador2usa!(Tijera.new)
		expect(partida.jugar_ronda(0)).to eq "jugador2gana"
	end

	it 'jugador 1 empata la ronda usando papel' do
		partida.jugador1usa!(Papel.new)
		partida.jugador2usa!(Papel.new)
		expect(partida.jugar_ronda(0)).to eq "empate"
	end

	it 'jugador 1 gana la ronda usando piedra' do
		partida.jugador1usa!(Piedra.new)
		partida.jugador2usa!(Tijera.new)
		expect(partida.jugar_ronda(0)).to eq "jugador1gana"
	end

	it 'jugador 1 empata la ronda usando piedra' do
		partida.jugador1usa!(Piedra.new)
		partida.jugador2usa!(Piedra.new)
		expect(partida.jugar_ronda(0)).to eq "empate"
	end

	it 'jugador 1 pierde la ronda usando piedra' do
		partida.jugador1usa!(Piedra.new)
		partida.jugador2usa!(Papel.new)
		expect(partida.jugar_ronda(0)).to eq "jugador2gana"
	end
end
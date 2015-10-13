require 'rspec'
require_relative '../model/barco'
require_relative '../model/submarino'
require_relative '../model/submarino'

describe 'Submarino' do

  let(:submarino) { Submarino.new(Player.new("1"),1) }  

  it 'cuando es impactado por un proyectil del jugador 2, debe devolver "Submarino del jugador 1 ha sido destruido!"' do
    expect(submarino.fue_golpeado!("2")).to eq "Submarino del jugador 1 ha sido destruido!"
  end
  
end
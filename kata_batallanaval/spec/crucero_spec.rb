require 'rspec'
require_relative '../model/barco'
require_relative '../model/crucero'

describe 'Crucero' do

  let(:crucero) { Crucero.new(Player.new("1"),2) }  

  it 'cuando es impactado por un proyectil del jugador 2, debe devolver "Crucero del jugador 1 ha sido impactado!"' do
    expect(crucero.fue_golpeado!("2")).to eq "Crucero del jugador 1 ha sido impactado!"
  end

  it 'cuando es impactado por 2 ataques del jugador 2, debe devolver "Crucero del jugador 1 ha sido destruido!' do
    expect(crucero.fue_golpeado!("2")).to eq "Crucero del jugador 1 ha sido impactado!"
    expect(crucero.fue_golpeado!("2")).to eq "Crucero del jugador 1 ha sido destruido!"
  end
end
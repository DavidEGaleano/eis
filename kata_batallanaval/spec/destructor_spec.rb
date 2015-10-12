require 'rspec'
require_relative '../model/barco'
require_relative '../model/destructor'

describe 'Destructor' do

  let(:destructor) { Destructor.new("1",3) }  

  it 'cuando es impactado por un proyectil del jugador 2, debe devolver "Destructor del jugador 1 ha sido impactado!"' do
    expect(destructor.fue_golpeado!("2")).to eq "Destructor del jugador 1 ha sido impactado!"
  end
  
end
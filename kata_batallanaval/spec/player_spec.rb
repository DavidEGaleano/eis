require 'rspec'
require_relative '../model/player'
require_relative '../model/barco'
require_relative '../model/submarino'
require_relative '../model/crucero'
require_relative '../model/destructor'

describe 'Player' do

  let(:player) { Player.new("1") }  

  it 'cuando selecciona un barco con el nombre "crucero" debe devolver un barco tipo "Crucero"' do
    expect(player.seleccionar_un_barco("crucero")).to be_kind_of (Crucero)
  end

  it 'cuando selecciona un barco con el nombre "submarino" debe devolver un barco tipo "Submarino"' do
    expect(player.seleccionar_un_barco("submarino")).to be_kind_of(Submarino)
  end

  it 'cuando selecciona un barco con el nombre "destructor" debe devolver un barco tipo "Destructor"' do
    expect(player.seleccionar_un_barco("destructor")).to be_kind_of (Destructor)
  end

  it 'al solicitarle el nombre al player debe devolver su nombre ' do
    expect(player.dar_nombre).to eq "1"
  end
  
end
require 'rspec'
require_relative '../model/player'
require_relative '../model/barco'
require_relative '../model/submarino'
require_relative '../model/crucero'
require_relative '../model/destructor'

describe 'Player' do

  let(:player) { Player.new("1") }  

  it 'cuando selecciona un barco con el nombre "crucero" debe devolver un barco tipo "Crucero"' do
    player.seleccionar_un_barco("crucero").should be_kind_of (Crucero)
  end

  it 'cuando selecciona un barco con el nombre "submarino" debe devolver un barco tipo "Submarino"' do
    player.seleccionar_un_barco("submarion").should be_kind_of (Submarino)
  end
  
  
end
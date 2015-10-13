require 'rspec'
require_relative '../model/tablero'
require_relative '../model/barco'
require_relative '../model/crucero'
require_relative '../model/player'
require_relative '../model/crucero'

describe 'Tablero' do

  let(:tablero) { Tablero.new }  

  it 'dado un talero vacio y la coordenada 1,1 deberia dar "celda"' do
    expect(tablero.dar_celda(1,1)).to eq "celda"
  end

  it 'dado un barco y una coordenada 1,1 deberia poner el barco en la celda' do
    tablero.colocar_barco(1,1,Barco.new("1",3))
    expect(tablero.dar_celda(1,1)) == (Barco)
  end
  
  it 'colcando un barco tipo crucero, y la coordenada 1,1 deberia poner el barco que ocupe 2 celdas' do
    tablero.colocar_barco(1,1,Crucero.new("1",3))
    expect(tablero.dar_celda(1,1)) == (Crucero)
  end

  it 'dado un barco y una coordenada 1,1 que tiene un barco, deberia de devolver que "coordenada invalida"' do
  	tablero = Tablero.new
  	tablero.colocar_barco(1,1,Barco.new("1",3))
  	expect(tablero.colocar_barco(1,1,Barco.new("1",3))).to eq "coordenada invalida"
  end
	
  it 'dada una coordenada 10,10 que esta fuera de los limites, deberia devolver "coordenada invalida"' do
    expect(tablero.colocar_barco(10,10,Barco.new("1",3))).to eq "coordenada invalida"
  end

  it 'dada una coordenada de ataque en el que no hay barco, deberia devolver "agua!"' do
    expect(tablero.disparan_a_la_coordenada("1",5,5)).to eq "agua!"
  end

  it 'dada una coordenada de ataque por el player 1 en el que hay un crucero del player 2, deberia devolver "Crucero del jugador 2 ha sido impactado!"' do
    tablero.colocar_barco(1,1,Crucero.new(Player.new("2"),2))
    expect(tablero.disparan_a_la_coordenada("1",1,1)).to eq "Crucero del jugador 2 ha sido impactado!"
  end

  it 'dada una coordenada de ataque por el player 1 en el que hay un submarino del player 2, deberia devolver "Submarino del jugandor 2 ha sido destruido!"' do
    tablero.colocar_barco(1,1,Submarino.new(Player.new("2"),1))
    expect(tablero.disparan_a_la_coordenada("1",1,1)).to eq "Submarino del jugador 2 ha sido destruido!"  
  end

  it 'dada una serie de coordenadas de ataque por el player 1 en el que hay un crucero del player 2, deberia devolver "Crucero del jugandor 2 ha sido destruido!" ' do
    tablero.colocar_barco(1,1,Crucero.new(Player.new("2"),2))
    expect(tablero.disparan_a_la_coordenada("1",1,1)).to eq "Crucero del jugador 2 ha sido impactado!"
    expect(tablero.disparan_a_la_coordenada("1",1,2)).to eq "Crucero del jugador 2 ha sido destruido!"
  end

  it 'dada una serie de coordenadas de ataque por el player 1 en el que hay un destructor del player 2, deberida devolver "Destructor del jugador 2 ha sido destruido!"' do
    tablero.colocar_barco(1,1,Destructor.new(Player.new("2"),3))
    expect(tablero.disparan_a_la_coordenada("1",1,1)).to eq "Destructor del jugador 2 ha sido impactado!"
    expect(tablero.disparan_a_la_coordenada("1",1,2)).to eq "Destructor del jugador 2 ha sido impactado!"
    expect(tablero.disparan_a_la_coordenada("1",1,3)).to eq "Destructor del jugador 2 ha sido destruido!"
  end

  it 'dada una serie de coordenadas de ataque por el player 1 que cooresponden a coordenadas ya usadas, deberia de devolver "Player 1 ya disparo en esa coordenada" ' do
    tablero.colocar_barco(1,1,Destructor.new(Player.new("2"),3))
    expect(tablero.disparan_a_la_coordenada("1",1,1)).to eq "Destructor del jugador 2 ha sido impactado!"
    expect(tablero.disparan_a_la_coordenada("1",1,1)).to eq "Player 1 ya disparo en esa coordenada"
  end
end


class GameCore
  attr_reader :tablero,:barco_seleccionado,:player_1,:player_2,:player_seleccionado
  def initialize
    @tablero = Tablero.new
    @player_1 = Player.new("1")
    @player_2 = Player.new("2")
  end

  def nuevo_juego
  	@tablero = Tablero.new
  	@player_1 = Player.new("1")
    @player_2 = Player.new("2")
  end

  def player_1_selecciona_barco(un_barco)
    @barco_seleccionado = @player_1.seleccionar_un_barco(un_barco)
  end

  def player_1_coloca_barco(x, y)
    @tablero.colocar_barco(x,y,@barco_seleccionado)
  end

  def player_2_selecciona_barco(un_barco)
    @barco_seleccionado = @player_2.seleccionar_un_barco(un_barco)
  end

  def player_2_coloca_barco(x, y)
    @tablero.colocar_barco(x,y,@barco_seleccionado)
  end

  def seleccionar_player(nombre_player)
    @player_seleccionado = nombre_player
  end

  def player_dispara_a_la_coordenada(x,y)
    @tablero.disparan_a_la_coordenada(@player_seleccionado,x,y)
  end

end
class GameCore
  @tablero
  @barco_seleccionado
  @player_1
  
  def initialize
    @tablero = Tablero.new
    @player_1 = Player.new("1")
  end

  def nuevo_juego
  	@tablero = Tablero.new
  	@player_1 = Player.new("1")
  end

  def player_1_selecciona_barco(un_barco)
    @barco_seleccionado = @player_1.seleccionar_un_barco(un_barco)
  end

  def player_1_coloca_barco(x, y)
    @tablero.colocar_barco(x,y,@barco_seleccionado)
  end

end
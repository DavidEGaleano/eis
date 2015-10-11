class BatallaNaval
  @game_core

  def initialize
    @game_core = GameCore.new
  end

  def nuevo_juego
    @game_core.nuevo_juego
  end

  def player_1_selecciona_barco(un_barco)
    @game_core.player_1_selecciona_barco(un_barco)
  end
  
  def player_1_coloca_un_barco_en(x , y)
    @game_core.player_1_coloca_barco(x,y)
  end
end
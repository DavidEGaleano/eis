class Partida
  attr_reader :juez, :turno, :ronda

  def initialize
  	@juez = Juez.new
  	@turno = 1
  	@ronda = Ronda.new
  end

  def jugar!
    @juez.evaluar!(@ronda)
  end

  def turno_player_1!
  	@turno = 1
  end

  def turno_player_2!
  	@turno = 2
  end

  def usa_tijera!
    self.aplicar_seleccion(Tijera.new)
  end

  def usa_papel!
    self.aplicar_seleccion(Papel.new)
  end

  def usa_mono!
  	self.aplicar_seleccion(Mono.new)
  end

  def usa_piedra!
    self.aplicar_seleccion(Piedra.new)
  end

  def aplicar_seleccion(un_movimiento)
    if @turno == 1
      @ronda.jugador_1_usa(un_movimiento)
    else
      @ronda.jugador_2_usa(un_movimiento)
    end
  end
  

end
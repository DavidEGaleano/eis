class Ronda
  attr_reader :movimiento_p1, :movimiento_p2, :resultado_p1, :resultado_p2

  def jugador_1_usa(un_movimiento)
    @movimiento_p1 = un_movimiento
  end

  def jugador_2_usa(un_movimiento)
    @movimiento_p2 = un_movimiento
  end

  def dar_resultado
    movimiento_p1.juega_contra(movimiento_p2)    
  end

end
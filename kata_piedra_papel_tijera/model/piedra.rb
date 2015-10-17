class Piedra
  
  def juega_contra(otro_movimiento)
    otro_movimiento.juega_contra_roca(self)
  end

  def juega_contra_roca(una_Roca)
    Empate.new()
  end

end
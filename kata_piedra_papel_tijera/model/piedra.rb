class Piedra
  
  def juega_contra(otro_movimiento)
    otro_movimiento.juega_contra_piedra(self)
  end

  def juega_contra_piedra(una_piedra)
    Empate.new
  end

  def juega_contra_tijera(una_tijera)
    Gana.new
  end

end
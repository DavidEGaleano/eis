class Papel

  def juega_contra(otro_movimiento)
  	otro_movimiento.juega_contra_papel(self)
  end

  def juega_contra_piedra(una_piedra)
    Pierde.new
  end

  def juega_contra_tijera(una_tijera)
  	Gana.new
  end

  def juega_contra_papel(un_papel)
  	Empate.new
  end


end
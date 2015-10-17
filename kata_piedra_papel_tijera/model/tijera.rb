class Tijera

  def juega_contra(otro_movimiento)
    otro_movimiento.juega_contra_tijera(self)
  end

  def juega_contra_piedra(una_piedra)
    Gana.new
  end

  def juega_contra_tijera(una_tijera)
  	Empate.new
  end

  def juega_contra_papel(un_papel)
    Pierde.new
  end
end
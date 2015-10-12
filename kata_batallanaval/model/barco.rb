class Barco
  attr_reader :nombre_player,:tamaño,:destruido

  def initialize(nombre_de_player,tamaño_barco)
     @nombre_player = nombre_de_player
     @tamaño = tamaño_barco
     @destruido = false
  end

  def dar_tamaño
    @tamaño
  end

  def fue_golpeado!
    @tamaño = @tamaño - 1
    @destruido = @tamaño == 0
  end

  def destruido?
    @destruido
  end

end
class Barco
  attr_reader :nombre_player,:resistencia,:destruido

  def initialize(nombre_de_player,tamaño_barco)
     @nombre_player = nombre_de_player
     @resistencia = tamaño_barco
     @destruido = false
  end

  def dar_resistencia
    @resistencia
  end

  def fue_golpeado!(nombre_player)
    @resistencia = @resistencia - 1
    @destruido = @resistencia == 0
  end

  def destruido?
    @destruido
  end

end
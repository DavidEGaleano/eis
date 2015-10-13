class Barco
  attr_reader :player,:resistencia,:destruido

  def initialize(player,tamaño_barco)
     @player = player
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
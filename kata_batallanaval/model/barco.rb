class Barco
  attr_reader :nombre_player,:tamaño

  def initialize(nombre_de_player,tamaño_barco)
     @nombre_player = nombre_de_player
     @tamaño = tamaño_barco
  end

  def dar_tamaño
    @tamaño
  end
  
end
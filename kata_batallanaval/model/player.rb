class Player
  attr_reader :nombre, :caja_de_barcos

  def initialize(nombre_player)
    @caja_de_barcos = CajaDeBarcos.new(nombre)
    @nombre = nombre_player
  end

  def seleccionar_un_barco(nombre_barco)
    @caja_de_barcos.obtener_barco(nombre_barco)
  end

end
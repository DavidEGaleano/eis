class CajaDeBarcos
  attr_reader :caja,:nombre_player

  def initialize(nombre)
    @nombre_player = nombre
    @caja = Hash.new (Barco.new(@nombre_player,3))
    construir_barcos
  end
#definir 3 tipos de barcos en este punto
  def construir_barcos
    @caja.store("destructor", Destructor.new(@nombre_player,3))
    @caja.store("crucero", Crucero.new(@nombre_player,2))
    @caja.store("submarino", Barco.new(@nombre_player,1))
  end

  def obtener_barco(nombre_barco)
    @caja[nombre_barco]
  end

end
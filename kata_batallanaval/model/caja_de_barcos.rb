class CajaDeBarcos
  attr_reader :caja

  def initialize
    @caja = Hash.new (Barco.new)
    construir_barcos
  end

  def construir_barcos
    @caja.store("destructor", Barco.new)
    @caja.store("crucero", Barco.new)
    @caja.store("submarino", Barco.new)
  end

  def obtener_barco(nombre_barco)
    @caja[nombre_barco]
  end

end
class Tablero
  attr_reader :area

  def initialize

    @area = [
      ["celda","celda","celda","celda","celda","celda"],
      ["celda","celda","celda","celda","celda","celda"],
      ["celda","celda","celda","celda","celda","celda"],
      ["celda","celda","celda","celda","celda","celda"],
      ["celda","celda","celda","celda","celda","celda"],
    ]

  end

  def dar_celda(x,y)
  	@area[x-1][y-1]
  end

  def colocar_barco(x,y,objeto)
    
    if !celda_valida?(x,y) 
      @area[x-1][y-1]= objeto
    else
      "coordenada invalida"
    end

  end

  def celda_valida?(x,y)
    fuera_de_margen?(x,y) || @area[x-1][y-1] != "celda"
  end

  def fuera_de_margen?(x,y)
    ( x > @area.length && y > @area.length) 
  end

end
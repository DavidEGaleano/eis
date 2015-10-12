class Tablero
  attr_reader :area

  def initialize

    @area = [
      ["celda","celda","celda"],
      ["celda","celda","celda"],
      ["celda","celda","celda"]
    ]

  end

  def dar_celda(x,y)
  	@area[x-1][y-1]
  end

  def colocar_barco(x,y,objeto)
    
    if !celda_ocupada?(x,y)
      @area[x-1][y-1]= objeto
    else
      "celda ocupada"
    end
    
  end

  def celda_ocupada?(x,y)
    @area[x-1][y-1] != "celda"
  end

end
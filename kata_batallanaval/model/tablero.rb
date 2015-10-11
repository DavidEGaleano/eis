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
    @area[x-1][y-1]= objeto
  end

end
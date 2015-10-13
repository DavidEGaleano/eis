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
    
    if celda_valida?(x,y,objeto.dar_resistencia) 
      for i in 0..objeto.dar_resistencia
        @area[x-1][y-1 + i] = objeto
      end
    else
      "coordenada invalida"
    end

  end

  def celda_valida?(x,y,tamaño)
    !fuera_de_margen?(x,y) && area_libre?(tamaño,x,y)
  end

  def area_libre?(tamaño,x,y)
    @libre = true
    for i in 0..tamaño
      if(@libre)
        @libre = @area[x-1][y-1 + i] == "celda"
      end
    end
    @libre
  end

  def fuera_de_margen?(x,y)
    ( x > @area.length && y > @area.length) 
  end

  #asume que es coorecta la posicion dada 
  def disparan_a_la_coordenada(nombre_player,x,y)
    if(dar_celda(x,y) == "celda")
      "agua!"
    else
      dar_celda(x,y).fue_golpeado!(nombre_player)
    end
  end

  def dar_area
    @area
  end

end
class Tablero
  attr_reader :area,:coordenadas_de_disparo_elegidas

  def initialize

    @area = [
      ["celda","celda","celda","celda","celda","celda"],
      ["celda","celda","celda","celda","celda","celda"],
      ["celda","celda","celda","celda","celda","celda"],
      ["celda","celda","celda","celda","celda","celda"],
      ["celda","celda","celda","celda","celda","celda"],
    ]

    @coordenadas_de_disparo_elegidas = [
      [],
      []
    ]

  end

  def dar_celda(x,y)
  	@area[x-1][y-1]
  end

  def colocar_barco(x,y,objeto)
    
    if celda_valida?(x,y,objeto.dar_resistencia) 
      for i in 0..objeto.dar_resistencia-1
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

  def disparan_a_la_coordenada(nombre_player,x,y)
    if(!fue_usada_esa_coordenada?(nombre_player,x,y))
      ejecuto_disparo_en(nombre_player,x,y)
    else
      "Player " + nombre_player + " ya disparo en esa coordenada"
    end
  end

  def ejecuto_disparo_en(nombre_player,x,y)
    if(dar_celda(x,y) == "celda")
      grabar_coordenada_usada(nombre_player,x,y)
      "agua!"
    else
      grabar_coordenada_usada(nombre_player,x,y)
      dar_celda(x,y).fue_golpeado!(nombre_player)
    end
  end

  def fue_usada_esa_coordenada?(nombre_player,x,y)
    @coordenadas_de_disparo_elegidas[(nombre_player.to_i) - 1].include?([x,y])
  end

  def grabar_coordenada_usada(nombre_player,x,y)
    @numero_player= nombre_player.to_i - 1
    @tamaño_lista = @coordenadas_de_disparo_elegidas[@numero_player].length
    @coordenadas_de_disparo_elegidas[@numero_player][@tamaño_lista] = [x,y]
  end

end
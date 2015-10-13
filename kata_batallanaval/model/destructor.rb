class Destructor < Barco

  def fue_golpeado!(nombre_de_player)
    super
    if(!destruido?)
      "Destructor del jugador " + @player.dar_nombre + " ha sido impactado!"
    else
      "Destructor del jugador " + @player.dar_nombre + " ha sido destruido!"
    end
  end

end

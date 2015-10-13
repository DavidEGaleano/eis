class Crucero < Barco

  def fue_golpeado!(nombre_de_player)
    super
    if(!destruido?)
      "Crucero del jugador " + @player.dar_nombre + " ha sido impactado!"
    else
      "Crucero del jugador " + @player.dar_nombre + " ha sido destruido!"
    end
  end

end
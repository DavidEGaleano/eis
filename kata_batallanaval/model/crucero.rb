class Crucero < Barco

  def fue_golpeado!(nombre_de_player)
    super
    "Crucero del jugador " + @player.dar_nombre + " ha sido impactado!"
  end

end
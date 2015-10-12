class Crucero < Barco

  def fue_golpeado!(nombre_de_player)
    super
    "Crucero del jugador " + @nombre_player + " ha sido impactado!"
  end
  
end
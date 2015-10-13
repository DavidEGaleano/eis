class Submarino < Barco
  
  def fue_golpeado!(nombre_de_player)
    super
    "Submarino del jugador " + @player.dar_nombre + " ha sido destruido!"
  end
end
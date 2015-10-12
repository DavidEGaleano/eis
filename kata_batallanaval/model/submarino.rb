class Submarino < Barco
  
  def fue_golpeado!(nombre_de_player)
    super
    "Submarino del jugador " + @nombre_player + " ha sido destruido!"
  end
end
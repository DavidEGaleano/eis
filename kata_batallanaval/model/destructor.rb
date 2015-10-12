class Destructor < Barco
  def fue_golpeado!(nombre_de_player)
    super
    "Destructor del jugador " + @nombre_player + " ha sido impactado!"
  end
end

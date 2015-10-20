class Calculadora

  attr_reader :cantidad_operaciones

  def initialize
    @cantidad_operaciones = 0
  end

  def sumar(operando_1,operando_2)
  	self.contar_operaciones
    operando_1 + operando_2
  end

  def cantidad_operaciones
   @cantidad_operaciones
  end

  def cargar_cantidad_operaciones(cantidad_operaciones)
   @cantidad_operaciones = cantidad_operaciones
  end

  def restar(operando_1,operando_2)
    self.contar_operaciones
    operando_1 - operando_2
  end

  def resetear_memoria
    @cantidad_operaciones = 0
  end

  def promediar(operando_1,operando_2)
    sumar(operando_1,operando_2) / 2
  end

  def contar_operaciones
    @cantidad_operaciones = @cantidad_operaciones+1
  end

end
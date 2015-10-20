require_relative 'models/calculadora'

module Ejemplo
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get 'hola' do
      'hey! hola'
    end
    
    get 'saludo' do
      render 'saludo'
    end

    get 'calculadora' do
      @operaciones = params[:operaciones].to_i
      session[:operaciones] = params[:operaciones].to_i
      render 'calculadora'
    end

    post 'calculadora' do
      @op_1 = params[:operando_1]
      @op_2 = params[:operando_2]
      @calculadora = Calculadora.new
      @calculadora.cargar_cantidad_operaciones(session[:operaciones])
      if(params[:Sumar])
        @resultado = @calculadora.sumar(@op_1.to_i,@op_2.to_i)
      elsif(params[:Restar])
        @resultado = @calculadora.restar(@op_1.to_i,@op_2.to_i)
      end
      @operaciones = @calculadora.cantidad_operaciones
      session[:operaciones]= @operaciones
      render 'calculadora'
    end

    post 'saludo' do
      session[:nombre] = params[:nombre]
      @nombre = session[:nombre]
      render 'saludo'
    end

  end
end
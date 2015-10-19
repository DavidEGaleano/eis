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
      render 'calculadora'
    end

    post 'calculadora' do
      @op_1 = params[:operando_1]
      @op_2 = params[:operando_2]
      @resultado = Calculadora.new.sumar(@op_1.to_i,@op_2.to_i)
      render 'calculadora'
    end

    post 'saludo' do
      session[:nombre] = params[:nombre]
      @nombre = session[:nombre]
      render 'saludo'
    end

  end
end
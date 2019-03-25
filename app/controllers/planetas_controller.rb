class PlanetasController < ApplicationController
  include Hola
  def show
    @data = JSON.parse(params[:json])
    @peliculas = api_request_movies(@data)
    @residentes = api_request_residents(@data)
  end
end
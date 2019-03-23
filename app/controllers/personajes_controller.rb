class PersonajesController < ApplicationController
  include Hola
  def show
    @data = JSON.parse(params[:json])
    @peliculas = api_request_movies(@data)
    @planeta, @homeworld = api_request_home_planet(@data)
    @naves = api_request_starships(@data)
  end
end
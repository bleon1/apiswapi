class PersonajesController < ApplicationController
  include Hola
  def show
    @data = JSON.parse(params[:json])
    @peliculas = api_request_movies(@data)
    @planeta = api_request_home_planet(@data)
    @naves = api_request_starships(@data)
    @especie = api_get_species(@data)
  end
end
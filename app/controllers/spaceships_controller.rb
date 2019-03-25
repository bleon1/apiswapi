class SpaceshipsController < ApplicationController
  include Hola
  def show
    @data = JSON.parse(params[:json])
    @peliculas = api_request_movies(@data)
    @pilotos = api_request_pilots(@data)
  end
end
class MoviesController < ApplicationController

  include Hola

  def show
    @id = transform_episode(movie_id)
    @data = HTTParty.get("https://swapi.co/api/films/#{@id}")
    @personajes = api_request_characters(@data)
    @planetas = api_request_planets(@data)
    @naves = api_request_starships(@data)
  end


  private

  def movie_id
    params[:id]
  end

  def transform_episode(movie_id)
    if movie_id == "4"
      movie_id = "1"
    elsif movie_id == "5"
      movie_id = "2"
    elsif movie_id == "6"
      movie_id = "3"
    elsif movie_id == "1"
      movie_id = "4"
    elsif movie_id == "2"
      movie_id = "5"
    elsif movie_id == "3"
      movie_id = "6"
    end
    return movie_id
  end

end
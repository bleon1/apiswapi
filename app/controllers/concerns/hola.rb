module Hola

  def api_request_movies(data)
    @peliculas = []
    @urls = data['films']
    @urls.each do |u|
      @datos = HTTParty.get(u)
      @peliculas << [@datos['title'], @datos['episode_id']]
    end
    return @peliculas
  end

  def api_request_characters(data)
    @personajes = []
    @urls = data['characters']
    @urls.each do |u|
      @datos = HTTParty.get(u)
      @personajes << [@datos, @datos['name']]
    end
    return @personajes
  end

  def api_request_pilots(data)
    @pilotos = []
    @urls = data['pilots']
    @urls.each do |u|
      @datos = HTTParty.get(u)
      @pilotos << [@datos, @datos['name']]
    end
    return @pilotos
  end

  def api_request_residents(data)
    @residentes = []
    @urls = data['residents']
    @urls.each do |u|
      @datos = HTTParty.get(u)
      @residentes << [@datos, @datos['name']]
    end
    return @residentes
  end

  def api_request_planets(data)
    @planetas = []
    @urls = data['planets']
    @urls.each do |u|
      @datos = HTTParty.get(u)
      @planetas << [@datos, @datos['name']]
    end
    return @planetas
  end

  def api_request_home_planet(data)
    @planeta = HTTParty.get(data['homeworld'])
    return @planeta
  end

  def api_request_starships(data)
    @naves = []
    @urls = data['starships']
    @urls.each do |u|
      @datos = HTTParty.get(u)
      @naves << [@datos, @datos['name']]
    end
    return @naves
  end
  
end
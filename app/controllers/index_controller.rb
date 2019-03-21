class IndexController < ApplicationController
    def index
        response = HTTParty.get('https://swapi.co/api/films/')
        @response = JSON.parse(response.body)['results']
        
    end
end
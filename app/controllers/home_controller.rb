class HomeController < ApplicationController

    def index
        @response = JSON.parse((HTTParty.get("https://swapi.co/api/films/")).body)['results']
    end

end
require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/heroes' do
      @team = Team.new(params[:team])

      params[:team][:heroes].each do |hero|
      Hero.new(hero)
    end
    @heroes = Hero.all
      erb :heroes
    end
end

require 'sinatra/base'
require 'pry'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do 
        "Hello"
        erb :super_hero
    end

    post '/team' do 
        @team = Team.new(params[:team])

        params[:team][:members].each do |details|
            Member.new(details)
        end

        @members = Member.all
        # binding.pry
        erb :team
    end


end

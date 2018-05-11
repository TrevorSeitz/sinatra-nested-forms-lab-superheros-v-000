require 'sinatra/base'

class App < Sinatra::Base

  set :views, Proc.new { File.join(root, "../views/") }

  require './config/environment'

  get '/' do
    erb :"app/views/super_hero"
  end

  get '/new' do
    erb :"app/views/super_hero"
  end

  post '/teams' do
    # binding.pry
    @team = Team.new(params[:team])

    params[:team][:members].each do |details|
      Superhero.new(details)
    end

    @members = Superhero.all

    erb :"app/views/team"
  end
  
end

require './config/environment'

class App < Sinatra::Base

  get '/' do
    erb :"views/new"
  end

  get '/new' do
    erb :"views/new"
  end
  post '/teamss' do
    # binding.pry
    @team = Team.new(params[:team])

    params[:team][:superheroes].each do |details|
      Superhero.new(details)
    end

    @superheroes = Superhero.all

    erb :"pirates/show"
  end
end

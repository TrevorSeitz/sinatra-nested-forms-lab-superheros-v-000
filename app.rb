require './config/environment'

class App < Sinatra::Base

  get '/' do
    erb :"views/new"
  end

  get '/new' do
    erb :"views/new"
  end

  post '/teams' do
    # binding.pry
    @team = Team.new(params[:team])

    params[:team][:members].each do |details|
      Superhero.new(details)
    end

    @members = Superhero.all

    erb :"views/show"
  end
end

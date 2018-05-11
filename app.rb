require './config/environment'

class App < Sinatra::Base

  get '/' do
    erb :"views/new"
  end

  get '/new' do
    erb :"views/new"
  end

end

require 'sinatra/base'
require 'sinatra/reloader'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    'Hello Players, Please enter your names'
    erb :index

  end

  post '/' do
    @playerone = params[:playerone]
    @playertwo = params[:playertwo] 
    erb :index
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
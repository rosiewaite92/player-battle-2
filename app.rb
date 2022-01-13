require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    'Hello Players, Please enter your names'
    erb :index
  end

  post '/names' do
    session[:playerone] = params[:playerone]
    session['playertwo'] = params[:playertwo] 
    redirect '/play'
  end

  get '/play' do 
    @playerone = session[:playerone]
    @playertwo = session[:playertwo]
    erb :play
  end 

  post '/player_1_confirmation' do 
    @playerone = session[:playerone]
    @playertwo = session[:playertwo]
   
    erb :player_1_confirmation
  end 
  

  # start the server if ruby file executed directly
  run! if app_file == $0
end
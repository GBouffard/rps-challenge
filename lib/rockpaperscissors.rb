require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }
  get '/' do
    erb :index
  end

  get '/game_options' do
    @name = params[:name] || session[:name]
    session[:name] = @name
    @player = Player.new(@name)
    session[:player] = @player
    erb :options
  end

  get '/game_play' do
    @name = session[:name]
    @type = (params[:type].nil? ? session[:type] : params[:type])
    session[:type] = @type
    @game = Game.new(session[:player], @type)
    session[:game] = @game
    erb :play
  end

  get '/game_results' do
    @hand = params[:hand]
    session[:player].hand = @hand
    p session[:game]
    @result = (session[:game]).decision(session[:player])
    p @result
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end

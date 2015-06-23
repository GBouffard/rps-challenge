require 'sinatra/base'
require_relative 'game'
require_relative 'player'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }
  set :public_folder, proc { File.join(root, '..', 'public') }
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
    session[:hand] = @game.cpu_hand
    erb :play
  end

  get '/game_results' do
    @hand = params[:hand]
    session[:player].hand = @hand
    @cpu_hand = session[:hand]
    @result = (session[:game]).decision(session[:player])
    @name = session[:name]
    @win_or_lose = (@result == @name) ? 'win_' : 'lose_'
    @cpu_win_or_lose = (@result == 'CPU') ? 'win_' : 'lose_'
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end

require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  set :views, proc { File.join(root, '..', 'views') }
  get '/' do
    erb :index
  end

  get '/game_options' do
    @name = params[:name]
    erb :options
  end

  get '/game_play' do
    @type = params[:type]
    erb :play
  end

  get '/game_results' do
    @hand = params[:hand]
    erb :results
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end

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

  get '/play' do
    @type = params[:type]
    erb :gameplay
  end

  # start the server if ruby file executed directly
  run! if app_file == $PROGRAM_NAME
end

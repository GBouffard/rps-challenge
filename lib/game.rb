class Game
  attr_reader :type, :player2
  def initialize(_player1, type = 'RPS', player2 = 'CPU')
  	@type = type
  	game_type_ok?
  	@player2 = player2
  end

private
  def game_type_ok?
    fail 'You can only play a RPS type game' unless (@type == 'RPS' || @type =='RPSSL')
  end
end

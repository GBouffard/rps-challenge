class Game
  attr_reader :type
  def initialize(_player1, type = 'RPS')
    @type = type
  end
end

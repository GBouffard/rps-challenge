class Game
  attr_reader :type, :player2, :cpu_hand
  def initialize(_player1, type = 'RPS', player2 = 'CPU')
    @type = type
    game_type_ok?
    @player2 = player2
    @cpu_hand = cpu_plays if @player2 == 'CPU'
  end

  private

  def game_type_ok?
    fail 'You can only play a RPS type game' unless @type == 'RPS' || @type == 'RPSSL'
  end

  def cpu_plays
    type == 'RPS' ? %w(rock paper scissors).sample : %w(rock paper scissors spock lizard).sample
  end
end

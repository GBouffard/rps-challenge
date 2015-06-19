class Game
  attr_reader :type, :player2, :winner
  attr_accessor :cpu_hand
  RPS_RULES = { 'rock' => %w(scissors lizard),
                'scissors' => %w(paper lizard),
                'paper' => %w(rock spock),
                'lizard' => %w(paper spock),
                'spock' => %w(rock scissors) }

  def initialize(player1, type = 'RPS', player2 = 'CPU')
    @type = type
    game_type_ok?
    @player1 = player1
    @player2 = player2
    @cpu_hand = cpu_plays if @player2 == 'CPU'
  end

  def decision(player1, player2 = 'CPU')
    second_hand = (@player2 == 'CPU' ? @cpu_hand : @player2.hand)
    @winner = (player1.hand == second_hand ? 'None! It\'s a DRAW' : player2)
    RPS_RULES.each { |wins, loses| @winner = player1.name if player1.hand == wins && loses.include?(second_hand) }
    @winner
  end

  private

  def game_type_ok?
    fail 'You can only play a RPS type game' unless @type == 'RPS' || @type == 'RPSSL'
  end

  def cpu_plays
    type == 'RPS' ? %w(rock paper scissors).sample : %w(rock paper scissors spock lizard).sample
  end
end

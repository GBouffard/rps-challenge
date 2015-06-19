require 'game'

describe Game do
  let(:player1) { double :player, name: 'Guillaume', hand: 'rock' }
  let(:player2) { double :player, hand: 'scissors' }
  let(:game) { Game.new(:player1) }
  let(:two_players_game) { Game.new(:player1, 'RPS', player2) }

  it 'knows that we are playing RPS if not mentioned otherwise' do
    expect(game.type).to eq 'RPS'
  end

  it 'knows that we can choose to play RPSSL instead of RPS' do
    rpssl_game = Game.new(:player1, 'RPSSL')
    expect(rpssl_game.type).to eq 'RPSSL'
  end

  it 'cannot play any other type of game than RPS or RPSSL' do
    expect { Game.new(:player1, 'battleships') }.to raise_error 'You can only play a RPS type game'
  end

  it 'can be played by 1 but also by 2 players' do
    expect { Game.new(:player1, 'RPS', player2) }.not_to raise_error
  end

  it 'knows that if there is only one player online, the 2nd player is the CPU' do
    expect(game.player2).to eq 'CPU'
  end

  it 'chooses a random hand for the CPU if there is only 1 player online' do
    expect(game.cpu_hand).to satisfy { 'rock' || 'paper' || 'scissors' }
  end

  it 'does not choose a random hand to play against if there are 2 players in the game' do
    expect(two_players_game.cpu_hand).to be nil
  end

  it 'knows when the result of a game is a draw' do
    player_draw = double(:player, hand: 'rock')
    draw_game = Game.new(:player1, 'RPS', player_draw)
    draw_game.decision(player1, player_draw)
    expect(draw_game.winner).to eq 'None! It\'s a DRAW'
  end

  it 'knows who the winner of a 2 players RPS game is' do
    two_players_game.decision(player1, player2)
    expect(two_players_game.winner).to eq player1.name
    player3 = double(:player, hand: 'paper')
    p3wins = Game.new(:player1, 'RPS', player3)
    p3wins.decision(player1, player3)
    expect(p3wins.winner).to eq player3
  end

  it 'knows who the winner of a 2 players RPSSL game is' do
    player4 = double(:player, hand: 'lizard')
    p1wins = Game.new(:player1, 'RPS', player4)
    p1wins.decision(player1, player4)
    expect(p1wins.winner).to eq player1.name
    player5 = double(:player, hand: 'spock')
    p5wins = Game.new(:player1, 'RPS', player5)
    p5wins.decision(player1, player5)
    expect(p5wins.winner).to eq player5
  end

  it 'knows who the winner of a 1 player vs CPU RPS game is' do
    100.times do
      new_game = Game.new(:player1)
      new_game.decision(player1)
      expect(new_game.winner).to satisfy { player1.name || 'None! It\'s a DRAW' || 'CPU' }
    end
  end

  it 'knows who the winner of a 1 player vs CPU RPSSL game is' do
    100.times do
      new_rpssl_game = Game.new(:player1, 'RPSSL')
      new_rpssl_game.decision(player1)
      expect(new_rpssl_game.winner).to satisfy { player1.name || 'None! It\'s a DRAW' || 'CPU' }
    end
  end
end

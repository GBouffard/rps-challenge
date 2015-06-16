require 'game'

describe Game do
  let(:player1) { double :player, hand: 'rock' }
  let(:player2) { double :player, hand: 'paper' }
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

  it 'chooses a random hand if there is only one player online' do
    expect(game.cpu_hand).to satisfy { 'rock' || 'paper' || 'scissors' }
  end

  it 'does not choose a hand if there is a second player in the game' do
    expect(two_players_game.cpu_hand).to be nil
  end

  it 'knows when it\'s a draw' do
    player_draw = double(:player, hand: 'rock')
    draw_game = Game.new(:player1, 'RPS', player_draw)
    draw_game.decision(player1, player_draw)
    expect(draw_game.winner).to eq 'DRAW!'
  end

  xit 'knows who the winner of a RPS game is' do
  end

  xit 'knows who the winner of a RPSSL game is' do
  end
end

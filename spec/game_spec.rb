require 'game'

describe Game do
  game = Game.new('player1')
  it 'knows that we are playing RPS if not mentioned otherwise' do
    expect(game.type).to eq 'RPS'
  end

  xit 'knows that we can choose to play RPSSL instead of RPS' do
  end

  xit 'cannot play any other type of game than RPS or RPSSL' do
  end

  xit 'can be played by 1 or 2 players' do
  end

  xit 'cannot be player by more than 2 players' do
  end

  xit 'knows that if there is only one player online, the 2nd player is the CPU' do
  end

  xit 'chooses a random hand if there is only one player online' do
  end

  xit 'knows who the winner of a game is' do
  end

  xit 'knows when it\'s a draw' do
  end
end

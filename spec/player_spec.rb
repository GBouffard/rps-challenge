require 'player'

describe Player do
  let(:player) { Player.new('Guillaume') }
  it 'has a name' do
    expect(player.name).to eq 'Guillaume'
  end

  it 'can choose a hand to play' do
    player.choice('rock')
    expect(player.hand).to eq 'rock'
  end

  xit 'cannot choose a hand that is not a RPSSL hand' do
  end
end

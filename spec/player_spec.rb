require 'player'

describe Player do
  player = Player.new('Guillaume')
  it 'has a name' do
    expect(player.name).to eq 'Guillaume'
  end

  xit 'can choose a hand to play' do
  end

  xit 'cannot choose a hand that is not a RPSSL hand' do
  end
end

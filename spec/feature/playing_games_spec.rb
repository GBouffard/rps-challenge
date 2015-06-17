require 'capybara/rspec'
require 'player'
require 'game'

feature 'grand finale feature test - playing games' do
  scenario 'a 1 player RPS gam vs CPU' do
    guillaume = Player.new('Guillaume')
    rps_game = Game.new(guillaume)
    guillaume.choice('rock')
    expect(rps_game.decision(guillaume)).to satisfy { guillaume || 'DRAW!' || 'CPU' }
  end

  scenario 'a 1 player RPSSL game vs CPU' do
    guillaume = Player.new('Guillaume')
    rpssl_game = Game.new(guillaume)
    guillaume.choice('spock')
    expect(rpssl_game.decision(guillaume)).to satisfy { guillaume || 'DRAW!' || 'CPU' }
  end

  xscenario 'a 2 players RPS game' do
  end

  xscenario 'a 2 players RPSSL game' do
  end
end

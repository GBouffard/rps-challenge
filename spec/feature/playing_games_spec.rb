require 'capybara/rspec'
require 'player'
require 'game'

feature 'grand finale feature test - playing 40 games: 10 of each type' do
  scenario '10 1 player RPS games vs the CPU' do
    10.times do
      guillaume = Player.new('Guillaume')
      rps_game = Game.new(guillaume)
      guillaume.choice(%w(rock paper scissors).sample)
      expect(rps_game.decision(guillaume)).to satisfy { guillaume || 'DRAW!' || 'CPU' }
    end
  end

  scenario '10 1 player RPSSL games vs the CPU' do
    10.times do
      guillaume = Player.new('Guillaume')
      rpssl_game = Game.new(guillaume, 'RPSSL')
      guillaume.choice(%w(rock paper scissors spock lizard).sample)
      expect(rpssl_game.decision(guillaume)).to satisfy { guillaume || 'DRAW!' || 'CPU' }
    end
  end

  scenario '10 2 players RPS games' do
    10.times do
      guillaume1 = Player.new('Good Guillaume')
      guillaume2 = Player.new('Guillaume Evil Twin')
      rps_game = Game.new(guillaume1, 'RPS', guillaume2)
      guillaume1.choice(%w(rock paper scissors).sample)
      guillaume2.choice(%w(rock paper scissors).sample)
      expect(rps_game.decision(guillaume1, guillaume2)).to satisfy { guillaume1 || 'DRAW!' || guillaume2 }
    end
  end

  xscenario 'a 2 players RPSSL game' do
  end
end

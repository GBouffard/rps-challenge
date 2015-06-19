class Player
  attr_reader :name
  attr_accessor :hand
  def initialize(name)
    @name = name
  end

  def choice(hand)
    weapons = %w(rock paper scissors spock lizard)
    weapons.include?(hand.to_s.downcase) ? @hand = hand.downcase : (fail 'This is not a RPSSL hand!')
  end
end

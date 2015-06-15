class Player
  attr_reader :name, :hand
  def initialize(name)
    @name = name
  end

  def choice(hand)
    @hand = hand
  end
end

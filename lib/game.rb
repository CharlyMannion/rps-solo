require_relative 'player'

class Game
  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :weapons

  def initialize(player = Player.new)
    @player = player
    @weapons = WEAPONS
  end
end

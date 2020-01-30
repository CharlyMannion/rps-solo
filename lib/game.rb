require_relative 'player'

class Game
  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :computer_player, :weapons

  def initialize(player = Player.new, computer_player = ComputerPlayer.new)
    @player = player
    @computer_player = computer_player
    @weapons = WEAPONS
  end
end

require_relative 'player'
require_relative 'computer_player'

class Game
  WEAPONS = ["rock", "paper", "scissors"]
  attr_reader :player, :computer_player, :weapons

  def self.create
    @game = Game.new
  end

  def self.instance
    @game
  end

  def initialize(player = Player.new, computer_player = ComputerPlayer.new)
    @player = player
    @computer_player = computer_player
    @weapons = WEAPONS
  end
end

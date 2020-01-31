require_relative 'player'
require_relative 'computer_player'

class Game
  WEAPONS = ["rock", "paper", "scissors"]
  attr_reader :player, :computer_player, :weapons, :player_result

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
    @player_result
  end

  def evaluate
    if draw? then @player_result = "drew"
    elsif win? then @player_result = "win"
    else @player_result = "lose"
    end
  end

  private
  def draw?
    @player.weapon == @computer_player.chosen_weapon
  end

  def win?
    if @player.weapon == "rock" && @computer_player.chosen_weapon == "scissors"
      true
    elsif @player.weapon == "paper" && @computer_player.chosen_weapon == "rock"
      true
    elsif @player.weapon == "scissors" && @computer_player.chosen_weapon == "paper"
      true
    end
  end
end

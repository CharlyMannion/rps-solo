require 'game'
require 'player'
require 'computer_player'

describe Game do
  subject(:game) { Game.new }
  WEAPONS = ["rock", "paper", "scissors"]

  describe '#initialize' do
    it 'should have an instance of the player class' do
      expect(game.player).to be_a Player
    end
    it 'should have a computer plater' do
      expect(game.computer_player). to be_a ComputerPlayer
    end
  end

  describe '#weapons' do
    it 'should have weapons' do
      expect(game.weapons).to eq(WEAPONS)
    end
  end
end

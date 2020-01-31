require 'game'
require 'player'
require 'computer_player'

describe Game do
  subject(:game) { Game.new }
  let(:test_player) { double :player, weapon: "rock" }
  let(:test_comp) { double :computer_player, chosen_weapon: "rock" }
  let(:scissors_comp) { double :computer_player, chosen_weapon: "scissors" }
  let(:paper_comp) { double :computer_player, chosen_weapon: "paper" }
  subject(:drawn_game) { Game.new(test_player, test_comp) }
  subject(:won_game) { Game.new(test_player, scissors_comp) }
  subject(:lost_game) { Game.new(test_player, paper_comp) }
  WEAPONS = ["rock", "paper", "scissors"]

  describe '#initialize' do
    it 'should have an instance of the player class' do
      expect(game.player).to be_a Player
    end
    it 'should have a computer plater' do
      expect(game.computer_player). to be_a ComputerPlayer
    end
    it 'should have an undetermined result for the player' do
      expect(game.player_result).to eq(nil)
    end
  end

  describe '#weapons' do
    it 'should have weapons' do
      expect(game.weapons).to eq(WEAPONS)
    end
  end

  describe '#evaluate' do
    it 'should set the player result to draw if players choose the same weapon' do
      drawn_game.evaluate
      expect(drawn_game.player_result).to eq("drew")
    end
    it 'should set the player result to win if the player beats the computer' do
      won_game.evaluate
      expect(won_game.player_result).to eq "win"
    end
    it 'should set the player result to lose if the player loses to the computer' do
      lost_game.evaluate
      expect(lost_game.player_result).to eq "lose"
    end
  end
end

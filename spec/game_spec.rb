require 'game'
require 'player'

describe Game do
  subject(:game) { Game.new }
  WEAPONS = [:rock, :paper, :scissors]

  describe '#initialize' do
    it 'should have an instance of the player class' do
      expect(game.player).to be_a Player
    end
  end

  describe '#weapons' do
    it 'should have weapons' do
      expect(game.weapons).to eq(WEAPONS)
    end
  end
end

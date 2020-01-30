require 'game'
require 'player'

describe Game do
  subject(:game) { Game.new }

  describe '#initialize' do
    it 'should have an instance of the player class' do
      expect(game.player).to be_a Player
    end
  end
end

require 'player'

describe Player do
  subject(:test_player) { Player.new }

  describe '#choose_weapon' do
    it 'should choose a weapon' do
      test_player.choose_weapon("rock")
      expect(test_player.weapon).to eq("rock")
    end
    # it 'should raise an error if the weapon is not rock, paper or scissors' do
    #   expect { test_player.choose_weapon("glue") }.to raise_error "Not a possible weapon"
    # end
  end
end

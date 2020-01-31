require 'computer_player'

describe ComputerPlayer do
  subject(:computer_player) { ComputerPlayer.new }

  describe '#weapon' do
    it 'should select a weapon at random' do
      computer_player.choose_weapon
      expect(WEAPONS).to include(computer_player.chosen_weapon)
    end
  end
end

require 'computer_player'

describe ComputerPlayer do
  subject(:computer_player) { ComputerPlayer.new }

  describe '#weapon' do
    it 'should select a weapon at random' do
      expect(WEAPONS).to include(computer_player.weapon)
    end
  end
end

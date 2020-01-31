class ComputerPlayer
  attr_reader :chosen_weapon

  def initialize
    @chosen_weapon
  end

  def choose_weapon
    @chosen_weapon = Game::WEAPONS.sample
  end

end

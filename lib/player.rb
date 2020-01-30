class Player
  attr_accessor :weapon

  def choose_weapon(weapon)
    fail "Not a possible weapon" unless Game::WEAPONS.include? weapon
    
    @weapon = weapon
  end
end

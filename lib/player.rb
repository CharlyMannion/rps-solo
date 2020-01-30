class Player
  WEAPONS = ["rock", "paper", "scissors"]

  attr_accessor :weapon

  def choose_weapon(weapon)
    fail "Not a possible weapon" unless WEAPONS.include? weapon
    @weapon = weapon
  end
end

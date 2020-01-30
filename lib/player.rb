class Player
  attr_accessor :weapon
  WEAPONS = [:rock, :paper, :scissors]

  def choose_weapon(weapon)
    fail "Not a possible weapon" unless WEAPONS.include? weapon
    @weapon = weapon
  end
end

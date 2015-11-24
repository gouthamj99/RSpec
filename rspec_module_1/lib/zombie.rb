class Zombie
  attr_accessor :name, :brains

  def initialize
    @name = 'Ash'
    @brains = 0
  end

  def hungry?
    false
  end
end

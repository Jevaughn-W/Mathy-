class Player
  
  attr_accessor :name, :lives, :turn

  def initialize(name, lives, turn)
   @name = name
   @lives = lives
   @turn = turn
  end
end


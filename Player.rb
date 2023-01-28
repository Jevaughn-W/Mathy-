class Player
  
  attr_accessor :name, :score, :lives, :turn

  def initialize(name, score, lives, turn)
   @name = name
   @score = score
   @lives = lives
   @turn = turn
  end
end


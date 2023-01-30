class Questions

  attr_accessor :sum

  def self.generate
    @num_one = rand(1...20)
    @num_two = rand(1...20)
    @question = "What does #{@num_one} plus #{@num_two} equal?"
  end

  def self.answer
    @sum = @num_one + @num_two
  end


end


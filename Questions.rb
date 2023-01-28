class Questions

  attr_accessor :sum

  def self.generate
    random = Random.new(Random.seed) # Used to numbers closer to true randomness
    @num_one = random.rand(1...20)
    @num_two = random.rand(1...20)
    "What does #{@num_one} plus #{@num_two} equal?"
  end

  def self.answer
    @sum = @num_one + @num_two
  end
end



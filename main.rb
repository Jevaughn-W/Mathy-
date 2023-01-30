require "./Player.rb"
require "./Questions.rb"
require "./Game.rb"



# Game start

puts "-----Welcome to Mathy!-----\n"
puts "\nPlease enter player 1 name"

# Enter Player details
player1_name = gets.chomp

puts "\nPlease enter player 2 name."
player2_name = gets.chomp

# Create player 1 & 2; player 1 goes first
player_one = Player.new(player1_name, 0, 3, true)
player_two = Player.new(player2_name, 0, 3, false)


Game.start_game(player_one, player_two)



# Create Questions

# puts Questions.generate
# puts  "Player 1: #{player_one.name}"
# puts  "Player 2: #{player_two.name}"

# count = 0

# while count < 5 do

#   # random = Random.new(Random.seed) # Used to numbers closer to true randomness
#   num_one = rand(1...20)
#   num_two = rand(1...20)

#   new_question = Questions.new(num_one, num_two)
#   puts new_question.question
#   count += 1
# end
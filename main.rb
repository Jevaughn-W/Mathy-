require "./Player.rb"


# Game start

puts "-----Welcome to Mathy!-----\n"
puts "\nPlease enter player 1 name"

# Enter Player details
player1_name = gets.chomp

puts "\nPlease enter player 2 name."
player2_name = gets.chomp

# Create player 1 & 2; player 1 goes first
Player1 = Player.new(player1_name, 0, 3, true)
Player2 = Player.new(player2_name, 0, 3, false)



# Object check
puts  "Player 1: #{Player1.name}"
puts  "Player 2: #{Player2.name}"
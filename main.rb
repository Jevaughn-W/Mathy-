require "./Player.rb"
require "./Questions.rb"
require "./Game.rb"



# Enter game

puts "-----Welcome to Mathy!-----\n"
puts "\nPlease enter player 1 name"

# Enter Player details
player1_name = gets.chomp

puts "\nPlease enter player 2 name."
player2_name = gets.chomp

# Create player 1 & 2; player 1 goes first
player_one = Player.new(player1_name, 3, true)
player_two = Player.new(player2_name, 3, false)


# Game start!
Game.start_game(player_one, player_two)
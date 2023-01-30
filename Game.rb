class Game
  

  def initialize(player_one, player_two)
    @@players = [ player_one, player_two] #using class variable as no objects will be created here
  end
  
  
  # Implement function to check turn based on the player whose turn is true
  def self.select_player
    @@players.each do |player|
      if player.turn == true
        @@selected = player
      else
        @@nexturn = player
      end
      
    end
  end

  # Print out the generated question with the player name and accept palayer answer
  def self.prompt
    puts "\n#{@@selected.name}: #{Questions.generate}" 
    player_answer = gets.chomp

    if player_answer.to_i == Questions.answer
      @@selected.score += 1
      puts "\nYES! Your are correct."
      puts "#{@@selected.name}: #{@@selected.lives}/3 vs #{@@nexturn.name}: #{@@nexturn.lives}/3"
    else 
      @@selected.lives -= 1
      puts "\nSeriously? No!"
      puts "#{@@selected.name}: #{@@selected.lives}/3 vs #{@@nexturn.name}: #{@@nexturn.lives}/3"
    end
  end


end

# puts Game.players
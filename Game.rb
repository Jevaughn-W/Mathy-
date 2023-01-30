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
  def self.prompt(question, answer)
    
    puts "\n#{@@selected.name}: #{question}" 
    player_answer = gets.chomp

    if player_answer.to_i == answer
      @@selected.score += 1
      puts "\nYES! Your are correct."
      puts "\n#{@@selected.name}: #{@@selected.lives}/3 vs #{@@nexturn.name}: #{@@nexturn.lives}/3"
      self.update_turn
    else 
      @@selected.lives -= 1
      puts "\nSeriously? No!"
      puts "\n#{@@selected.name}: #{@@selected.lives}/3 vs #{@@nexturn.name}: #{@@nexturn.lives}/3"
      self.update_turn
    end

  end

  # function to change whose turn it is and update the players array
  def self.update_turn
    @@players.pop(2)

    @@selected.turn = false
    @@nexturn.turn = true

    @@players.push(@@selected)
    @@players.push(@@nexturn)
  end

  # Run game

  def self.start_game(player_one, player_two)
    
    start_game = true
    
    self.new(player_one, player_two)


    # Loops until a player dies
    while start_game do
      
      self.select_player
      question = Questions.generate
      answer = Questions.answer
      self.prompt(question, answer)

      # Check for conditions to end game
      @@players.each do |player|
        if player.lives == 0
          start_game = false
        end
      end
      
      if (start_game)
        puts "\n--- New Turn ---"
      end

    end


    # Declare winner
    @@players.each do |player|
      if player.lives > 0
        puts "\n#{player.name} wins with a score of #{player.lives}/3"
        puts "\n--- Game Over ---"
        puts "Good bye!"
      end
    end
  end

end

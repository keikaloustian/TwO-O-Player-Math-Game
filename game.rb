class Game
  attr_accessor :current_player

  def initialize
    @P1 = Player.new('P1')
    @P2 = Player.new('P2')
    @current_player = @P1
  end

  def run_game

    while (@P1.lives > 0 && @P2.lives > 0)
      # Ask current player question and capture answer
      question = Question.new
      puts "---------------------"
      print "#{@current_player.name}, #{question.prompt} "
      answer = $stdin.gets.chomp

      # Reveal result, deduct if incorrect
      puts question.answer_correct?(answer) ? 'Correct!' : 'Incorrect!'
      @current_player.lives -=1 unless question.answer_correct?(answer)
    
      # Display remaining lives
      puts "P1: " + "❤️" * @P1.lives + "   P2: " + "❤️" * @P2.lives
      
      # Switch player
      @current_player = @current_player == @P1 ? @P2 : @P1

    end

    end_game

  end

  def end_game
     # Display final result
    puts "---------------------"
    puts "#{@current_player.name} is the winner with " + "❤️" * @current_player.lives + " remaining!"
  end

end
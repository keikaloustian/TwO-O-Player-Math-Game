class Game
  attr_accessor :current_player

  def initialize
    @P1 = Player.new('P1')
    @P2 = Player.new('P2')
    @current_player = @P1
  end

  def start

    
    while (@P1.lives > 0 && @P2.lives > 0)
      question = Question.new
      puts "#{@current_player.name}, #{question.prompt}"
      answer = $stdin.gets.chomp
      p question.answer_correct?(answer)

      @current_player.lives -=1 unless question.answer_correct?(answer)


      @P2.lives -= 1
      p "P1 has #{@P1.lives}"
      p "P2 has #{@P2.lives}"
      

    end

  end




end
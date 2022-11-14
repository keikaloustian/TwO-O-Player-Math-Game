class Game
  attr_accessor :current_player

  def initialize
    @current_player = 'Player 1'
  end

  def start

    player1 = Player.new
    player2 = Player.new

    question = Question.new

    while (player1.lives > 0)
      puts "P1 has #{player1.lives} left"
      player1.lives -= 1
    end
end
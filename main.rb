require 'pp'
require './game'
require './question'
require './player'

# player1 = Player.new
# player2 = Player.new

# question = Question.new
# p question
# p question.correct_answer
# puts question.prompt
# answer = $stdin.gets.chomp
# p question.answer_correct?(answer)

game = Game.new
game.start
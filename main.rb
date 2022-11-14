require 'pp'
require './game'
require './question'
require './player'

player1 = Player.new
player2 = Player.new

question = Question.new
# p question
puts question.prompt
p question.answer_correct?(9)
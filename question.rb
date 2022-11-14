class Question
  attr_accessor :prompt, :first_num, :second_num
  
  def initialize
    @first_num = rand(1..20)
    @second_num = rand(1..20)
    @prompt = "What is #{first_num} + #{second_num} ?"
    @correct_answer = @first_num + @second_num
  end

  def answer_correct?(answer)
    @correct_answer == answer
  end

end
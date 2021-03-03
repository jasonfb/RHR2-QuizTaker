class QuizesController < ApplicationController

  def random
    random_offset = rand(Quiz.count) # 0 .. total number of quizzes
    @quiz = Quiz.offset(0).first
    respond_to do |format|
      format.json {render json: {quiz: @quiz}}
    end
  end
end
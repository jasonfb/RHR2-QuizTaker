class ExamController < ApplicationController
  def create
    @quiz = Quiz.offset(Quiz.all.count).first # get a random quiz

    # there may be a table called sessions, but we don't join it here explicitly
    begin
      @exam = Exam.create!(session_id: session.id, quiz: @quiz)
      result = {
        exam: @exam
      }
    rescue StandardError => e
      result = {error: e.inspect}
    end

    respond_to do |format|
      format.json {render json: result}
    end
  end

  def exam_params
    params.require(:exam)
  end
end
class ExamController < ApplicationController
  def create
    @quiz = Quiz.offset(Quiz.all.count).first # get a random quiz

    # there may be a table called sessions, but we don't join it here explicitly
    @exam = Exam.new(session_id: session.id, quiz: @quiz)
    respond_to do |format|
      format.json {render json: {
        exam: @exam
      }}
    end
  end

  def exam_params
    params.require(:exam)
  end
end
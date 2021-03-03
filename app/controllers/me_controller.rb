class MeController < ApplicationController
  def index
    @exam_in_progress = Exam.not_finished.where(session_id: session.id).first
    exam_is_in_progress = !!@exam_in_progress

    respond_to do |format|
      format.json {render json: {
        exam_is_in_progrress: exam_is_in_progress,
        exam:  @exam_in_progress || {},
      }}
    end
  end

end
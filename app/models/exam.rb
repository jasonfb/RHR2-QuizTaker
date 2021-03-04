class Exam < ApplicationRecord
  belongs_to :quiz
  has_many :exam_questions

  # super simple state-responder
  # (not even a state manager)
  def state
    if !started_at
      "unstarted"
    elsif !completed_at
      "started"
    else
      "completed"
    end
  end

  scope :not_finished, -> {where(completed_at: nil)}
end

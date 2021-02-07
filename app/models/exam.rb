class Exam < ApplicationRecord
  belongs_to :quiz
  has_many :exam_questions

  def state
    if !started_at
      "unstarted"
    elsif !completed_at
      "started"
    else
      "completed"
    end
  end
end

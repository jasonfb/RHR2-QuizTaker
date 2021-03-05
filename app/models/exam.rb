class Exam < ApplicationRecord
  belongs_to :quiz
  has_many :exam_responses

  delegate :name, to: :quiz
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


  def as_json(options)
    super(only: [:id], methods: [:state, :name])
  end

  scope :not_finished, -> {where(completed_at: nil)}
end

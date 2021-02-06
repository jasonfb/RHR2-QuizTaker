class Exam < ApplicationRecord

  belongs_to :quiz
  has_many :exam_questions
end

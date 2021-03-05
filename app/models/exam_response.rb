class ExamResponse < ApplicationRecord
  belongs_to :exam
  belongs_to :question
  belongs_to :chosen_answer, class_name: 'Answer'
end

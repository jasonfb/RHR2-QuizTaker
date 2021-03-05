FactoryBot.define do
  factory :exam_response do
    exam {create(:exam)}
    question {create(:question)}
    chosen_answer {create(:answer, question: question)}
  end
end

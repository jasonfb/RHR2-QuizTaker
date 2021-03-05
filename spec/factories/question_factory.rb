FactoryBot.define do
  factory :question do
    quiz { create(:quiz) }
  end
end
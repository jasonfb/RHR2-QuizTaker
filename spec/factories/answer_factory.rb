FactoryBot.define do
  factory :answer do
    question { create(:question) }
    correct { false }
  end
end
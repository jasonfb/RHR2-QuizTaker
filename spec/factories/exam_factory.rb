FactoryBot.define do
  factory :exam do
    quiz {create(:quiz)}
  end
end
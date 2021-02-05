require 'rails_helper'

RSpec.describe Question, type: :model do
  subject {Question.new}
  it {should belong_to(:quiz)}
end

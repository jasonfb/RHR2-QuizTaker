require 'rails_helper'

RSpec.describe ExamQuestion, type: :model do
  subject { ExamQuestion.new }
  it { should belong_to(:exam)}
end

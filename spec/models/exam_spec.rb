require 'rails_helper'

RSpec.describe Exam, type: :model do
  subject { Exam.new }
  it { should belong_to(:quiz)}
  it { should have_many(:exam_questions)}
end

require 'rails_helper'

RSpec.describe Question, type: :model do
  subject { Question.new }
  it { should have_many(:answers)}
  it { should belong_to(:quiz) }
end

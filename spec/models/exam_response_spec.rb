require 'rails_helper'

RSpec.describe ExamResponse, type: :model do
  subject { create(:exam_response) }
  it { should belong_to(:exam)}
end

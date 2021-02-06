require 'rails_helper'

RSpec.describe Answer, type: :model do
  subject { Answer.new }
  it { should belong_to(:question)}
end

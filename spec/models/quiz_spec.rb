require 'rails_helper'

RSpec.describe Quiz, type: :model do
  subject { Quiz.new }
  it { should have_many(:questions) }
end

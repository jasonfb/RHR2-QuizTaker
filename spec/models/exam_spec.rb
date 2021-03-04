require 'rails_helper'

RSpec.describe Exam, type: :model do
  subject { Exam.new() }
  it { should belong_to(:quiz)}
  it { should have_many(:exam_questions)}

  describe "#state" do
    describe "for an unstarted exam" do
      let(:exam) { create(:exam) }
      it "should be unstarted if started_at is empty" do
        expect(exam.state).to eq("unstarted")
      end
    end
    describe "for a started exam" do
      let(:exam) { create(:exam, started_at: Time.current) }
      it "should be unstarted if started_at is empty" do
        expect(exam.state).to eq("started")
      end
    end
    describe "for a completed exam" do
      let(:exam) { create(:exam, started_at: Time.current - 5.minutes,
                          completed_at: Time.current) }
      it "should be unstarted if started_at is empty" do
        expect(exam.state).to eq("completed")
      end
    end
  end

end

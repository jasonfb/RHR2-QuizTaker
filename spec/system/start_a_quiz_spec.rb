require 'rails_helper'

describe "start a quiz", type: :feature do
  describe "as a user" do
    describe "so that I can be tested" do

      let!(:quiz) {create(:quiz, name: "ABC Quiz")}
      let!(:question_1) {create(:question, quiz: quiz, label: "What is 1+1")}
      let!(:answer_1a) {create(:answer, question: question_1, label: "1", correct: false)}
      let!(:answer_1b) {create(:answer, question: question_1, label: "2", correct: true)}
      let!(:answer_1c) {create(:answer, question: question_1, label: "4", correct: false)}
      let!(:answer_1d) {create(:answer, question: question_1, label: "20", correct: false)}

      it "a new fresh pageload should prompt me to start a new quiz" do
        visit '/'
        expect(page).to have_content 'Welcome to Quiz Taker'
        expect(page).to have_button 'Start New Quiz'
      end

      it "should let me start a new quiz using the 'Start New Quiz' button" do
        visit "/"
        click_button 'Start New Quiz'
        expect(page).to have_content("ABC Quiz")
        expect(page).to have_content("Question 1 of")


      end
    end
  end
end
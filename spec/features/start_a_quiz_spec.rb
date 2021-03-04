require 'rails_helper'

describe "start a quiz", type: :feature do
  describe "as a user" do
    describe "so that I can be tested" do
      it "a new fresh pageload should prompt me to start a new quiz" do
        visit '/'
        expect(page).to have_content 'Welcome to Quiz Taker'
        expect(page).to have_button 'Start New Quiz'
      end

      it "should let me start a new quiz using the 'Start New Quiz' button" do
        visit "/"
        click_button 'Start New Quiz'
        expect(page).to have_content("Question 1 of")
      end
    end
  end
end
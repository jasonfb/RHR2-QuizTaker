require 'rails_helper'

describe "start a quiz", type: :feature do
  describe "as a user" do
    describe "so that I can be tested" do
      it "a new fresh pageload should open a new exam in new state" do
        visit '/'
        expect(page).to have_content 'Welcome to Quiz Taker'
        expect(page).to have_button 'Start New Quiz'
      end
    end
  end
end
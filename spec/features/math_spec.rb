require 'rails_helper'

describe "take a quiz", type: :feature do
  it "asks me to add to two numbers" do
    visit '/'
    expect(page).to have_content 'What is 5+2'
  end
end
require 'rails_helper'

describe "take a quiz", type: :feature do
  it "asks me to add to two numbers" do
    visit '/'
    expect(page).to have_content 'Hello world'
  end
end
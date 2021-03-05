require 'rails_helper'

RSpec.describe "me controelr", type: :request do

  it "should allow me to get status info at /me" do
    get "/me", headers: { "ACCEPT" => "application/json" }

    @expected_result = { 'exam_is_in_progress': false,
                         'exam': {} }
    expect(response.body).to eq( @expected_result.to_json)
  end
end
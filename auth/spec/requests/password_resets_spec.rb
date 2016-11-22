require 'rails_helper'
require 'spec_helper'

describe "PasswordResets" do
  it "emails user when requesting password request" do

    #FactoryGirl.create(:user)
    visit login_path
    click_link "password"
    fill_in "Email", :with => "user@example.com"
    click_button "Reset Password"
    current_path.should eq(root_path)
    page.should have_content("Email sent")
  end
end

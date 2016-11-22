require 'spec_helper'

RSpec.describe "Logins", :type => :feature do
   before :each do
    User.create(:email => 'pi@pi.com', :password => 'pi')
  end
  it "signs me in with right user" do
    visit '/login' #'/sessions/new'
    fill_in 'Email', :with => 'pi@pi.com'
    fill_in 'Password', :with => 'pi'
    click_button 'Log in'
    expect(page).to have_content 'Logged in as pi@pi.com'
  end

   it "signs me in with wrong user" do
     visit '/login'
     fill_in 'Email', :with => 'abc@test.com'
     fill_in 'Password', :with => 'test'
     click_button 'Log in'
     expect(page).to have_content 'Sign up or log in Invalid email or password'
   end
end

require 'rails_helper'

describe 'Sign up' do
  it 'login with valid email and password' do
    sign_up FactoryGirl.create(:user)
    expect(page).to have_content('Logout')
  end
#Refactor this test---------------------------------------------------------------
  it 'login with a invalid email and password' do
      visit  new_user_session_path
      fill_in 'email', with: 'invalid@email.com'
      fill_in 'Password', with: 'invalidpass'
      submit_form
      expect(page).to have_content('Invalid')
    end

  it 'logout' do
    sign_up FactoryGirl.create(:user)
    click_link("Logout")
    expect(page).to have_content('Login')
  end

end

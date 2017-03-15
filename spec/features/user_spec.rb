require 'rails_helper'

feature 'Sign up' do
  scenario 'login with valid email and password' do
    sign_up FactoryGirl.create(:user)
    expect(page).to have_content('Logout')
  end
#Refactor this test---------------------------------------------------------------
  scenario 'login with a invalid email and password' do
      visit  new_user_session_path
      fill_in 'email', with: 'invalid@email.com'
      fill_in 'Password', with: 'invalidpass'
      submit_form
      expect(page).to have_content('Invalid')
    end

  scenario 'logout' do
    sign_up FactoryGirl.create(:user)
    click_link("Logout")
    expect(page).to have_content('Login')
  end

end

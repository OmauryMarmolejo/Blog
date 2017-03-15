module UserHelper
  def sign_up(user)
    visit  new_user_session_path
    fill_in 'email', with: user.email
    fill_in 'Password', with: user.password
    submit_form
  end

  def submit_form
    find('input[name="commit"]').click
  end

end

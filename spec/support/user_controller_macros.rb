module UserControllerMacros
  def login_user
    @request.env["devise.mapping"] = Devise.mappings[:user]
    user = build(:user)
    user.save!
    sign_in user
    @current_user = user
  end
end

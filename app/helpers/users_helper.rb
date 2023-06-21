module UsersHelper
  def current_user_password?(password)
    if password == current_user.password
      true
    else
      false
    end
  end
end

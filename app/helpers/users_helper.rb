module UsersHelper
  def current_user_password?(password)
    if password == current_user.password
      true
    else
      false
    end
  end

  def choose_new_or_edit
    if action_name == 'new'
      confirm_users_path
    elsif action_name == 'edit'
      user_path
    end
  end
end

module UsersHelper
  def current_user_password?(password)
    if password == current_user.password
      <%= render 'form', user: @user %>
    else
      redirect_to edit_user_path, notice: "The password is in correct."
    end
  end
end

class UsersController < ActionController::Base
  layout "application"

  def index
    @all_users = User.all
    render template: "user_templates/index"
  end

  def add_user
    User.create(username: params[:new_user])
    redirect_path = "/users/" + params[:new_user]
    redirect_to redirect_path
  end

  def user_profile
    @username = params[:username]
    @the_user = User.where(username: @username)[0]
    @user_photos = @the_user.own_photos

    render template: "user_templates/profile"
  end

  def update_username
    old_username = params[:old_user]
    old_user_record = User.find_by(username: old_username)
    old_user_record.update(username: params[:input_username])

    redirect_path = "/users/" + params[:input_username]
    redirect_to redirect_path
  end
end

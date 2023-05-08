class UsersController < ActionController::Base
  layout "application"

  def index
    @all_users = User.all
    render template: "user_templates/index"
  end

  def add_user
    User.create(username: params[:new_user])
    redicect_path = "/users/" + params[:new_user]
    redirect_to redicect_path
  end

  def user_profile
    @username = params[:username]
    @the_user = User.where(username: @username)[0]
    @user_photos = @the_user.own_photos

    render template: "user_templates/profile"
  end

  def update_username
    3
  end
end

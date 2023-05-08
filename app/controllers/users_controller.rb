class UsersController < ActionController::Base
  layout "application"

  def index
    @all_users = User.all
    render template: "user_templates/index"
  end

  def add_user
    #render template: #show the user lookup here
    3
  end

  def user_profile
    @username = params[:username]
    @the_user = User.where(username: @username)[0]

    render template: "user_templates/profile"
  end

  def update_username
    3
  end
end

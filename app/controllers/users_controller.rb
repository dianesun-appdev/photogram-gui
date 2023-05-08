class UsersController < ActionController::Base
  layout "application"

  def index
    render template: "user_templates/index"
  end

  def add_user
    #render template: #show the user lookup here 
    3
  end
end

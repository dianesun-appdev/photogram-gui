Rails.application.routes.draw do
  get "/", controller: "users", action: "index"
  get "/users", controller: "users", action: "index"
  get "/add_user", controller: "users", action: "add_user"
  get "/users/:username", controller: "users", action: "user_profile"
  get "/update_user/:username", controller: "users", action: "update_username"

  #get "/photos", controller: "photos", action: "index"
end

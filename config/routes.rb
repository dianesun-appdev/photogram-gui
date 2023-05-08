Rails.application.routes.draw do
  get "/", controller: "users", action: "index"
  get "/add_user", controller: "users", action: "add_user"
  #get "/users", controller: "users", action: "index"
  #get "/users/:username", controller: "users", action: "profile"

  #get "/photos", controller: "photos", action: "index"
end

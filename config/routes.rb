Rails.application.routes.draw do
  get "/", controller: "users", action: "index"
  get "/users", controller: "users", action: "index"
  get "/add_user", controller: "users", action: "add_user"
  get "/users/:username", controller: "users", action: "user_profile"
  get "/update_user/:old_user", controller: "users", action: "update_username"

  get "/photos", controller: "photo", action: "index"
  get "/photos/:photo_id", controller: "photo", action: "view_details"
  get "/insert_photo_record", controller: "photo", action: "post_photo"
  get "/delete_photo/:photo_id", controller: "photo", action: "delete_photo"
  get "/update_photo/:photo_id", controller: "photo", action: "update_photo"
  get "/insert_comment_record", controller: "photo", action: "post_comment"
end

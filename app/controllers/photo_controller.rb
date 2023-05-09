class PhotoController < ActionController::Base
  layout "application"

  def index
    @all_photos = Photo.all
    render template: "photo_templates/index"
  end

  def view_details
    @photo_data = Photo.where(id:params[:photo_id])[0]
    render template: "photo_templates/photo_details"
  end
end

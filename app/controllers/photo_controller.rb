class PhotoController < ActionController::Base
  layout "application"

  def index
    @all_photos = Photo.all
    render template: "photo_templates/index"
  end

  def view_details
    @photo_data = Photo.where(id: params[:photo_id])[0]
    render template: "photo_templates/photo_details"
  end

  def post_photo
    new_photo = Photo.create(image: params[:input_image], caption: params[:input_caption], owner_id: params[:input_owner_id])
    redirect_path = "/photos/" + new_photo.id.to_s
    redirect_to redirect_path
  end

  def delete_photo
    Photo.destroy_by(id: params[:photo_id])
    redirect_to "/photos"
  end

  def update_photo
    photo = Photo.find_by(id: params[:photo_id])
    photo.update(caption: params[:input_caption], image: params[:input_image])
    redirect_path = "/photos/" + photo.id.to_s
    redirect_to redirect_path
  end

  def post_comment
    Comment.create(photo_id: params[:input_photo_id], author_id: params[:input_author_id], body: params[:input_body])
    redirect_to "/photos/" + params[:input_photo_id].to_s
  end
end

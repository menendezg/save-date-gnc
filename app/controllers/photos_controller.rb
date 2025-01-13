class PhotosController < ApplicationController
  def index
    @photos = Photo.all
  end

  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      respond_to do |format|
        format.turbo_stream # Uses create.turbo_stream.erb
        format.html { redirect_to photos_path, notice: 'Photo uploaded successfully.' }
      end
    else
      respond_to do |format|
        format.turbo_stream { render turbo_stream: turbo_stream.replace('photo_form', partial: 'photos/form', locals: { photo: @photo }) }
        format.html { render :new, alert: 'Failed to upload photo.' }
      end
    end
  end

  private

  def photo_params
    params.require(:photo).permit(:image)
  end
end

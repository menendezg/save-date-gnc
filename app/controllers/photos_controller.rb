class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :edit, :update, :destroy]
  def index
    @photos = Photo.all
  end
  def show
  end


  def new
    @photo = Photo.new
  end

  def create
    @photo = Photo.new(photo_params)
    if @photo.save
      respond_to do |format|
        format.html { redirect_to photos_path } # Fallback if Turbo is disabled
        format.turbo_stream
      end
    else
      render :new, status: :unprocessable_entity
      # respond_to do |format|
      #   format.turbo_stream # Uses create.turbo_stream.erb
      #   format.html { redirect_to photos_path, notice: 'Photo uploaded successfully.' }
    end
  end
  def edit

  end
  def update
    if @photo.update(photo_params)
      redirect_to photos_path, notice: "Quote was successfully updated."
    else
      render :edit
    end
  end
  def destroy
    @photo.destroy
    redirect_to photos_path, notice: "Quote was successfully destroyed."
  end

  private

  def set_photo
    @photo = Photo.find(params[:id])
  end

  def photo_params
    params.require(:photo).permit(:image)
  end
end

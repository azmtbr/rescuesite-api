class PhotosController < ApplicationController
  before_action :set_photo, only: [:show, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :create, :index]

  # GET /photos
  # GET /photos.json
  def index
    @gallery = Gallery.find(params[:gallery_id])
    @photos = @gallery.photos

    render json: ActiveModel::ArraySerializer.new(@photos, each_serializer: PhotoSerializer).to_json

  end

  # GET /photos/1
  # GET /photos/1.json
  def show
    @photo = Photo.find(params[:id])

    render json: @photo
  end

  def new
    @gallery = Gallery.find(params[:id])
    @photo = @gallery.photos.build

    render json: @photo
  end

  # POST /photos
  # POST /photos.json
  def create
    @photo = Photo.new(photo_params.merge(gallery_id: params[:gallery_id]))

    if @photo.save
      render json: @photo, status: :created
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /photos/1
  # PATCH/PUT /photos/1.json
  def update
    @photo = Photo.find(params[:id])

    if @photo.update(photo_params)
      head :no_content
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end

  # DELETE /photos/1
  # DELETE /photos/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @photo.destroy

    head :no_content
  end

  private

    def set_photo
      @photo = Photo.find(params[:id])
    end

    def photo_params
      params.require(:photo).permit(:gallery_image)
    end
end

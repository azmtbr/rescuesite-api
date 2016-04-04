class LandingImagesController < ApplicationController
  before_action :set_landing_image, only: [:show, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]


  # GET /landing_images
  # GET /landing_images.json
  def index
    @landing_gallery = LandingGallery.find(params[:landing_gallery_id])
    @landing_images = @landing_gallery.landing_images

    render json: ActiveModel::ArraySerializer.new(@landing_images, each_serializer: LandingImageSerializer).to_json

  end


  # GET /landing_images/1
  # GET /landing_images/1.json
  def show
    @landing_image = LandingImage.find(params[:id])

    render json: @landing_image
  end

  def new
    @landing_gallery = LandingGallery.find(params[:id])
    @landing_image = @landing_gallery.landing_images.build

    render json: @landing_image
  end

  # POST /landing_images
  # POST /landing_images.json
  def create
    @landing_image = LandingImage.new(landing_image_params.merge(landing_gallery_id: params[:landing_gallery_id]))

    if @landing_image.save
      render json: @landing_image, status: :created
    else
      render json: @landing_image.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /landing_images/1
  # PATCH/PUT /landing_images/1.json
  def update
    @landing_image = LandingImage.find(params[:id])

    if @landing_image.update(landing_image_params)
      head :no_content
    else
      render json: @landing_image.errors, status: :unprocessable_entity
    end
  end

  # DELETE /landing_images/1
  # DELETE /landing_images/1.json
  def destroy
    @landing_image = LandingImage.find(params[:id])
    @landing_image.destroy

    head :no_content
  end

  private

    def set_landing_image
      @landing_image = LandingImage.find(params[:id])
    end

    def landing_image_params
      params.require(:landing_image).permit(:landing_image)
    end
end

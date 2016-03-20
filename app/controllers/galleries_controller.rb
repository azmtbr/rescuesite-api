class GalleriesController < ApplicationController

  def show
    @gallery = Gallery.find(params[:id])
    @photos = @gallery.photos

    render json: @gallery
  end



  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save

      if params[:gallery_images]
        params[:gallery_images].each { |gallery_image|
          @gallery.photos.create(gallery_image: gallery_image)
        }
      end
      render json: @adoption, status: :created

    else
      render json: @adoption.errors, status: :unprocessable_entity
    end
  end


  private

  def gallery_params
    params.permit(:animal_id, :rescue_id, :photos)
  end

end

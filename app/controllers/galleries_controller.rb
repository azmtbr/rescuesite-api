class GalleriesController < ApplicationController

  def index
    @galleries = Gallery.all
  end

  def show
    @gallery = Gallery.find(params[:id])

    render json: GallerySerializer.new(@gallery, root:false).to_json
  end



  def create
    @gallery = Gallery.new(gallery_params)

    if @gallery.save
      render json: @gallery, status: :created
    else
      render json: @gallery.errors, status: :unprocessable_entity
    end
  end

  def update
    @gallery = Gallery.find(params[:id])

    if @gallery.update(gallery_params)
      head :no_content
    else
      render json: @photo.errors, status: :unprocessable_entity
    end
  end


  private

  def gallery_params
    params.permit(:animal_id, :photos)
  end

end

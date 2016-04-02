class RescuesController < ApplicationController
  before_action :set_rescue, only: [:show, :update, :destroy]
  before_action :authenticate_user!

  # GET /animals
  # GET /animals.json
  def index
    @rescue = Rescue.friendly.find(params[:rescue_id])
    render json: @rescue
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    render json: @rescue
  end

  # POST /animals
  # POST /animals.json
  def create
    @rescue = Rescue.new(rescue_params)
    @rescue.landing_gallery = LandingGallery.new

    if @rescue.save
      render json: @rescue, status: :created, location: @rescue
    else
      render json: @rescue.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    @rescue = Rescue.friendly.find(params[:rescue_id])

    if @rescue.update(rescue_params)
      head :no_content
    else
      render json: @rescue.errors, status: :unprocessable_entity
    end
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @rescue.destroy

    head :no_content
  end

  private

    def rescue_params
      params.require(:rescue).permit(:name, :email)
    end
end
end

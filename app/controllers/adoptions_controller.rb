class AdoptionsController < ApplicationController
  def index
    @rescue = Rescue.friendly.find(params[:rescue_id])
    @adoptions = @rescue.adoptions

    render json: @adoptions
  end

  def show
    render json: Adoption.find(params[:id])
  end

  def new
  end

  def create
    @adoption = Adoption.new(adoption_params)

    if @adoption.save
      render json: @adoption, status: :created
    else
      render json: @adoption.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def destroy
    @adoption.destroy

    head :no_content
  end

  private

  def adoption_params
    params.permit(:first_name, :last_name, :email, :age, :street_address, :mailing_address, :city,
                  :state, :postal_code, :home_phone, :cell_phone, :work_phone, :rescue_id)
  end
end

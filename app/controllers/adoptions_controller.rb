class AdoptionsController < ApplicationController
  def index
    @adoptions = Adoption.all

    render json: @adoptions
  end

  def show
    render json: @adoption
  end

  def new
  end

  def create
    @adoption = Adoption.new(adoption_params)

    if @adoption.save
      render json: @adoption, status: :created, location: @adoption
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
    params.permit(:name, :email, :age, :street_address, :mailing_address, :city,
                  :state, :postal_code, :home_phone, :cell_phone, :work_phone, :desired_animal)
  end
end

class AnimalsController < ApplicationController
  before_action :set_animal, only: [:show, :update, :destroy]
  before_action :authenticate_user!, except: [:show, :index]


  # GET /animals
  # GET /animals.json
  def index
    @rescue = Rescue.friendly.find(params[:rescue_id])
    @animals = @rescue.animals

    render json: ActiveModel::ArraySerializer.new(@animals, each_serializer: AnimalSerializer).to_json
  end

  # GET /animals/1
  # GET /animals/1.json
  def show
    render json: AnimalSerializer.new(@animal, root:false).to_json
  end

  # POST /animals
  # POST /animals.json
  def create
    @animal = Animal.new(animal_params.merge({rescue_id: params[:rescue_id]}))
    @animal.gallery = Gallery.new

    if @animal.save
      render json: @animal, status: :created
    else
      render json: @animal.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /animals/1
  # PATCH/PUT /animals/1.json
  def update
    if params[:file].present?
      if @animal.update(update_params.merge({image: params[:file]}))
        head :no_content
      else
        render json: @animal.errors, status: :unprocessable_entity
      end
    else
      if @animal.update(update_params)
        head :no_content
      else
        render json: @animal.errors, status: :unprocessable_entity
      end
    end
  end

  # DELETE /animals/1
  # DELETE /animals/1.json
  def destroy
    @animal.destroy

    head :no_content
  end

  private

    def set_animal
      @animal = Animal.friendly.find(params[:id])
    end

    def animal_params
      params.permit(:name, :breed, :sex, :dob, :short_bio, :long_bio)
    end

    def update_params
        params.permit(:name, :breed, :sex, :dob, :short_bio, :long_bio)
    end
end

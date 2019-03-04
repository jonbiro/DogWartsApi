class PuppiesController < ApplicationController
  before_action :set_puppy, only: [:show, :update, :destroy]

  # GET /puppies
  def index
    @puppies = Puppy.all

    render json: @puppies
  end

  # GET /puppies/1
  def show
    render json: @puppy
  end

  # POST /puppies
  def create
    @puppy = Puppy.new(puppy_params)

    if @puppy.save
      render json: @puppy, status: :created, location: @puppy
    else
      render json: @puppy.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /puppies/1
  def update
    if @puppy.update(puppy_params)
      render json: @puppy
    else
      render json: @puppy.errors, status: :unprocessable_entity
    end
  end

  # DELETE /puppies/1
  def destroy
    @puppy.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_puppy
      @puppy = Puppy.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def puppy_params
      params.require(:puppy).permit(:name, :house)
    end
end

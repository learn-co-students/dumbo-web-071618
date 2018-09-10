class TacosController < ApplicationController
  before_action :set_taco, only: [:show, :update, :destroy]

  # GET /tacos
  def index
    @tacos = Taco.all

    render json: @tacos
  end

  # GET /tacos/1
  def show
    render json: @taco
  end

  # POST /tacos
  def create
    @taco = Taco.new(taco_params)

    if @taco.save
      render json: @taco, status: :created, location: @taco
    else
      render json: @taco.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tacos/1
  def update
    if @taco.update(taco_params)
      render json: @taco
    else
      render json: @taco.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tacos/1
  def destroy
    @taco.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_taco
      @taco = Taco.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def taco_params
      params.require(:taco).permit(:name, :spiciness)
    end
end

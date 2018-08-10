class CarsController < ApplicationController

  # The actions (aka methods)
  def index
    @cars = Car.all
    render :index
  end

  def show
    # GET /cars/:id
    @car = Car.find(params[:id])

    render :show
  end

  def new
    @car = Car.new
    render :new
    # /cars/new.html.erb
  end

  def create
    car =  Car.new(name: params["name"], make: params["make"], year: params["year"], model: params["model"])
    if car.save
      redirect_to "/cars/#{car.id}"
    else
      render :new
    end
  end

  def edit
    # GET /cars/:id/edit
    @car = Car.find(params[:id])

    render :edit
  end

  def wow
    render :kachow
  end

  def update
    # PATCH /cars/:id

    @car = Car.find(params[:id])
    @car.update(car_params)

    redirect_to "/cars/#{@car.id}"
  end

  private
  def car_params
    params.require(:car).permit(:name, :make, :model, :year)
  end
end

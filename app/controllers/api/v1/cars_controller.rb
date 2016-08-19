class Api::V1::CarsController < ApplicationController
  # GET /cars
  def index
    @cars = Car.all

    render json: @cars
  end

  # GET /cars/1
  def show
    @car = Car.find(params[:id])
    render json: @car
  end

  # POST /cars
  def create
    @car = Car.new(car_params)

    if @car.save
      render json: @car, status: :created
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /cars/1
  def update
    @car = Car.find(params[:id])
    if @car.update(car_params)
      render json: @car
    else
      render json: @car.errors, status: :unprocessable_entity
    end
  end

  # DELETE /cars/1
  def destroy
    @car = Car.find(params[:id])
    @car.destroy
  end

  private

    # Only allow a trusted parameter "white list" through.
    def car_params
      params.require(:car).permit(:user_id, :brand, :model, :model_year)
    end
end

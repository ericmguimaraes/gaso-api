class Api::V1::StationRatesController < ApplicationController
  # GET /station_rates
  def index
    @station_rates = StationRate.all

    render json: @station_rates
  end

  # GET /station_rates/1
  def show
    @station_rate = StationRate.find(params[:id])
    render json: @station_rate
  end

  # POST /station_rates
  def create
    @station_rate = StationRate.new(station_rate_params)

    if @station_rate.save
      render json: @station_rate, status: :created
    else
      render json: @station_rate.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /station_rates/1
  def update
    @station_rate = StationRate.find(params[:id])
    if @station_rate.update(station_rate_params)
      render json: @station_rate
    else
      render json: @station_rate.errors, status: :unprocessable_entity
    end
  end

  # DELETE /station_rates/1
  def destroy
    @station_rate = StationRate.find(params[:id])
    @station_rate.destroy
  end

  private

    # Only allow a trusted parameter "white list" through.
    def station_rate_params
      params.require(:station_rate).permit(:station_id, :rate)
    end
end

class Api::V1::ObdLogGroupsController < ApplicationController
  # GET /obd_log_groups
  def index
    @obd_log_groups = ObdLogGroup.all

    render json: @obd_log_groups
  end

  # GET /obd_log_groups/1
  def show
    @obd_log_group = ObdLogGroup.find(params[:id])
    render json: @obd_log_group
  end

  # POST /obd_log_groups
  def create
    @obd_log_group = ObdLogGroup.new(obd_log_group_params)

    if @obd_log_group.save
      render json: @obd_log_group, status: :created
    else
      render json: @obd_log_group.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /obd_log_groups/1
  def update
    @obd_log_group = ObdLogGroup.find(params[:id])
    if @obd_log_group.update(obd_log_group_params)
      render json: @obd_log_group
    else
      render json: @obd_log_group.errors, status: :unprocessable_entity
    end
  end

  # DELETE /obd_log_groups/1
  def destroy
    @obd_log_group = ObdLogGroup.find(params[:id])
    @obd_log_group.destroy
  end

  private

    # Only allow a trusted parameter "white list" through.
    def obd_log_group_params
      params.require(:obd_log_group).permit(:car_id)
    end
end

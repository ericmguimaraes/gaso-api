class Api::V1::ObdLogsController < ApplicationController
  # GET /obd_logs
  def index
    @obd_logs = ObdLog.all

    render json: @obd_logs
  end

  # GET /obd_logs/1
  def show
    @obd_log = ObdLog.find(params[:id])
    render json: @obd_log
  end

  # POST /obd_logs
  def create
    @obd_log = ObdLog.new(obd_log_params)

    if @obd_log.save
      render json: @obd_log, status: :created
    else
      render json: @obd_log.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /obd_logs/1
  def update
    @obd_log = ObdLog.find(params[:id])
    if @obd_log.update(obd_log_params)
      render json: @obd_log
    else
      render json: @obd_log.errors, status: :unprocessable_entity
    end
  end

  # DELETE /obd_logs/1
  def destroy
    @obd_log = ObdLog.find(params[:id])
    @obd_log.destroy
  end

  private

    # Only allow a trusted parameter "white list" through.
    def obd_log_params
      params.require(:obd_log).permit(:obd_log_group_id, :pid, :mode, :status, :data, :parsed)
    end
end

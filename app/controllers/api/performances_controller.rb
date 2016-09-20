class API::PerformancesController < ApplicationController
  before_action :set_performance, only: [:show, :update, :destroy]

  def show
    if stale?(@performance)
      render json: {performance: @performance}
    end
  end

  def create
    @performance = Performance.new(performance_params)
    if @performance.save
      show
    else
      render json: @performance.errors, status: :unprocessable_entity
    end
  end

  def update
    @performance.assign_attributes performance_params
    if @performance.save
      show
    else
      render json: @performance.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @performance.destroy!
    show
  end

  def set_performance
    @performance = Performance.find(params[:id])
  end

  def performance_params
    params.require(:performance).permit(:customer_id, :service_id, :date, :notes)
  end
end

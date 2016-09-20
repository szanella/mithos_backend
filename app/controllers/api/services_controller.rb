class API::ServicesController < ApplicationController
  before_action :set_service, only: [:show, :update, :destroy]

  def index
    @services = Service.all.order(:description)
    render json: {services: @services}
  end

  def show
    if stale?(@service)
      render json: {service: @service}
    end
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      show
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  def update
    @service.assign_attributes service_params
    if @service.save
      show
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @service.destroy!
    show
  end

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:description, :price)
  end
end

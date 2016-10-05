class API::CustomersController < ApplicationController
  #before_action :authenticate_user!
  before_action :set_customer, only: [:show, :update, :destroy]

  def index
    @customers = Customer.all.order(:name)
    render json: {customers: @customers}
  end

  def show
    if stale?(@customer)
      render json: {customer: @customer}
    end
  end

  def create
    @customer = Customer.new(customer_params)
    if @customer.save
      show
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def update
    @customer.assign_attributes customer_params
    if @customer.save
      show
    else
      render json: @customer.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @customer.destroy!
    show
  end

  def set_customer
    @customer = Customer.find(params[:id])
  end

  def customer_params
    params.require(:customer).permit(:name, :surname)
  end
end

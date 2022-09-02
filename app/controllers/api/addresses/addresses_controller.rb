class Api::Addresses::AddressesController < ApplicationController

  def index
    render json: Address.all
  end

  def show
    # to do
  end

  def create
    @addresses = Address.new(addresses_params)

    if @addresses.save
      render json: @addresses, status: 201
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  private
  def addresses_params
    params.require(:addresses).permit(:street, :district, :number, :city, :state, :contact_id)
  end
end

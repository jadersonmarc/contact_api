class Api::Addresses::AddressesController < ApplicationController

  def index
    render json: Address.all
  end

  def show
    # to do
  end
end

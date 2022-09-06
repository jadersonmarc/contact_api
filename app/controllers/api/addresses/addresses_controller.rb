class Api::Addresses::AddressesController < ApplicationController
  attr_accessor :address
  def index
    def index
      @contact = Contact.all
      render json: ContactSerializer.new(contact)
    end
  end

  def create
    @addresses = Address.new(addresses_params)

    if @addresses.save
      [ addresses, status: 201]
    else
      [{ errors: user.errors }, status: 422]
    end
  end

  private

  def addresses_params
    params.require(:addresses).permit(:street, :district, :number, :city, :state, :contact_id)
  end
end

class Api::Addresses::AddressesController < ApiController
  attr_accessor :address, :address_post_code, :city, :state
  def index
    def index
      @address = Address.all
      render json: AddressSerializer.new(address)
    end
  end
  def state
    render json: @state = States::GetStatesByUfService.new(params[:state]).call
  end
  def city
     render json: @city = Cities::GetCitiesByStateService.new({city: params[:city]}).call
  end

  def post_code
    render json: @address_post_code = PostCode::GetAddressByPostCodeService.new({post_code: params[:post_code]}).call
  end
  def create
    @address = Address.new(addresses_params)

    if address.save
      render json:  address, status: 201
    else
      render json: { errors: address.errors }, status: :unprocessable_entity
    end
  end

  private

  def addresses_params
    params.require(:addresses).permit(:street, :district, :number, :city, :state, :contact_id, :post_code)
  end

end

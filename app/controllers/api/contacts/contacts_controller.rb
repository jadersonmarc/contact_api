class Api::Contacts::ContactsController < ApiController
  def index
    render json: { health: 'OK' }
  end
end


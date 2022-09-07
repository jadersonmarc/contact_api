class Api::Contacts::ContactsController < ApiController
  attr_accessor :contact
  def index
     @contact = Contact.all
    render json: ContactSerializer.new(contact)
  end

  def create
    @contact = Contact.new(contact_params)

    if @contact.save
      render json: contact, status: 201
    else
      render json: { errors: user.errors }, status: 422
    end
  end

  def destroy
    # to do
  end

  private
  def contact_params
    params.require(:contact).permit(:name, :cpf, :email, :birth_date)
  end
end
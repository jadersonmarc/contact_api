class Api::SessionsController < Devise::SessionsController
  skip_before_action :verify_authenticity_token

  def create
    user = User.find_by(email: params[:user][:email])
    unless user
      return  { error: 'Não identificamos o seu cadastro, por favor cadastre-se.' }, status: :unprocessable_entity
    end
    { token: JsonWebToken.encode(sub: user.id) }
  end
end

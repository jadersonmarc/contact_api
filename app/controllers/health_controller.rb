class HealthController < ApplicationController
  def index
    render json: { health: 'OK' }
  end
end

class RespondersController < ApplicationController
  def index
    render json: Responder.all, status: 200
  end

  def create
    responder = Responder.new(responder_params)
    if responder.save
      render json: { responder: responder.hash }, status: 201
    else
      render json: { message: responder.errors }, status: 422
    end
  end

  private

  def responder_params
    params.require(:responder).permit([:type, :name, :capacity])
  end
end

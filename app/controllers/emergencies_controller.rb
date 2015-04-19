class EmergenciesController < ApplicationController
  def create
    emergency = Emergency.new(emergency_params)
    if emergency.save
      render json: { emergency: emergency }, status: 201
    else
      render json: { message: emergency.errors }, status: 422
    end
  end

  private

  def emergency_params
    params.require(:emergency).permit([:code, :fire_severity, :police_severity, :medical_severity])
  end
end

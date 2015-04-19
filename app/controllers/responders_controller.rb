class RespondersController < ApplicationController
	def create
		responder = Responder.new(responder_params)
		if responder.save
			render json: {:responder => responder}, status: 201
		else
			render json: {:message => emergency.errors}, status: 422
		end
	end

	private
	def responder_params
		params.require(:responder).permit([ :type, :name, :capacity])
    end
end
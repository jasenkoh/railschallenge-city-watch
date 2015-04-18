class EmergenciesController < ApplicationController
	def new
		render :json => {:message => 'page not found'}, :status => :not_found
	end
end
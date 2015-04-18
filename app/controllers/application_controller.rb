class ApplicationController < ActionController::Base
	rescue_from ActionController::RoutingError, :with => :render_not_found

	def render_not_found
		render :json => {:message => 'page not found'}, :status => :not_found
	end
end
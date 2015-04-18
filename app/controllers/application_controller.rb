class ApplicationController < ActionController::Base
	def render_not_found
		render :json => {:message => 'page not found'}, :status => :not_found
	end
end
class ApplicationController < ActionController::Base
  rescue_from ActionController::UnpermittedParameters, with: :render_unpermitted_parameters

  def render_not_found
    render json: { message: 'page not found' }, status: :not_found
  end

  protected

  def render_unpermitted_parameters(exception)
    render json: { message: exception.message }, status: 422
  end
end

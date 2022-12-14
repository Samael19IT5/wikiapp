class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :record_not_found
  def record_not_found
    render json: { error: "404 Not Found" }, status: 404
  end
end

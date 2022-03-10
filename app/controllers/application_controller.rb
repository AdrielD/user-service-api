# frozen_string_literal: true

# Main controller
class ApplicationController < ActionController::API
  rescue_from ActiveRecord::RecordNotFound, with: :not_found

  def not_found(error)
    Rails.logger.error "[ERROR] #{error.class}: #{error.message}"
    render json: { error: 'not_found', message: error.message }, status: :not_found
  end
end

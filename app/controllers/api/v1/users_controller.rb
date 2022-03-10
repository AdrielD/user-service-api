# frozen_string_literal: true

module Api
  module V1
    # Users controller
    class UsersController < ApplicationController
      def index
        render json: User.all, meta: { bla: 123 }, status: :ok
        # raise ActiveRecord::RecordNotFound.new('AAAAHHHHH')
      end
    end
  end
end

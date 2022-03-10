# frozen_string_literal: true

module Api
  module V1
    # Serializes user listing
    class UserSerializer < ActiveModel::Serializer
      include Rails.application.routes.url_helpers

      attributes :id, :email, :profile_username, :links

      def profile_username
        object.profile.username
      end

      def links
        { self: api_v1_user_path(object.id) }
      end
    end
  end
end

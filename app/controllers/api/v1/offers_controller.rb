module Api
  module V1
    class OffersController < ApplicationController
      def create
        render json: { success: true }, status: 201
      end
    end
  end
end

module Api
  module V1
    class OffersController < ApplicationController
      def create
        param! :user_id, String, required: true
        param! :quantity, Integer, required: true

        Offers::CreateOffer.new.call(params)

        render json: { success: true }, status: 201
      end
    end
  end
end

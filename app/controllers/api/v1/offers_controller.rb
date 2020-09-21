module Api
  module V1
    class OffersController < ApplicationController
      def create
        param! :user_id, String, required: true
        param! :quantity, Integer, required: true

        user = User.find(params[:user_id])
        Offer.create!(user_id: user.id, quantity: params[:quantity])

        render json: { success: true }, status: 201
      end
    end
  end
end

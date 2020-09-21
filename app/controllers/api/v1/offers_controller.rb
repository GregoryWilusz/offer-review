module Api
  module V1
    class OffersController < ApplicationController
      def create
        param! :user_id, String, required: true
        param! :quantity, Integer, required: true

        @id = SecureRandom.uuid
        Offers::CreateOffer.new.call(id, params)

        render_offer
      end

      private

      def offer
        Offer.find(id)
      end

      def render_offer
        render json: OfferSerializer.new.serialize(offer), status: 201
      end

      attr_reader :id
    end
  end
end

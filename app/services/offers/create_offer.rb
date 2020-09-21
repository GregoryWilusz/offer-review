module Offers
  class CreateOffer
    def call(params)
      user = User.find(params[:user_id])

      Offer.create!(
        user_id: user.id,
        quantity: params[:quantity]
      )
    end
  end
end

module Offers
  class CreateOffer
    def call(id, params)
      user = User.find(params[:user_id])

      Offer.create!(
        id: id,
        user_id: user.id,
        quantity: params[:quantity]
      )
    end
  end
end

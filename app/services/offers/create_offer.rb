module Offers
  class CreateOffer
    def call(id, salesman_id, params)
      client = Client.find(params[:client_id])

      Offer.create!(
        id: id,
        user_id: client.id,
        salesman_id: salesman_id,
        quantity: params[:quantity]
      )
    end
  end
end

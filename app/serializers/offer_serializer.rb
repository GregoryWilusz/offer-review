class OfferSerializer
  def serialize(object)
    {
      user_id: object.user_id,
      quantity: object.quantity
    }
  end
end
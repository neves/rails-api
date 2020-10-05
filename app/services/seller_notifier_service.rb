class SellerNotifierService
  def call(seller_id:)
    seller = Zoop::SellerResource.new.find_by_id(seller_id)
    response = Mock::NotificationResource.new.notify(
      email: seller["email"],
      message: "Bem vindo, " + seller["name"]
    )

    response["headers"]["X-Amzn-Trace-Id"]
  end
end

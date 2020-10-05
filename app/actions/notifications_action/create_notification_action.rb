module NotificationsAction
  class CreateNotificationAction
    def call(seller_id:)
      service = SellerNotifierService.new
      notification_id = service.call(seller_id: seller_id)

      {
        notification_id: notification_id,
        seller_id: seller_id,
        sent_at: Time.zone.now
      }
    end
  end
end

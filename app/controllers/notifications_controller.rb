class NotificationsController < ApplicationController
  def create
    action = NotificationsAction::CreateNotificationAction.new

    render json: action.call(seller_id: params[:seller_id])
  end
end

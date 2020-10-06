require 'rails_helper'

RSpec.describe "Notifications", type: :request do

  describe "POST /notifications" do
    it "returns http success" do
      post "/notifications", params: {
        seller_id: "0cdd51c147de4e2eb7ca02ad300c5b4a"
      }
      expect(response).to have_http_status(:success)
    end
  end

end

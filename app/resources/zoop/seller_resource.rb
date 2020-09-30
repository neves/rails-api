module Zoop
  class SellerResource
    include HTTParty
    base_uri "https://api.zoop.ws/v1/marketplaces/3249465a7753536b62545a6a684b0000"

    def initialize
      @auth = {username: "zpk_test_EzCkzFFKibGQU6HFq7EYVuxI", password: ""}
    end

    def find_by_id(id)
      response = self.class.get("/sellers/#{id}", basic_auth: @auth)
      data = response.parsed_response
      data.slice(*selected_properties)
          .merge(
        "name" => data["first_name"] + " " + data["last_name"]
      )
    end

    def selected_properties
      %w(id email status taxpayer_id)
    end
  end
end

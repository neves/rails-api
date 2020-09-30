namespace :zoop do
  desc "TODO"
  task seller: :environment do
    # base = "https://api.zoop.ws/v1/marketplaces/3249465a7753536b62545a6a684b0000/"
    # url = base + "sellers/0cdd51c147de4e2eb7ca02ad300c5b4a"
    # response = HTTParty.get(url,
    #   basic_auth: {
    #     username: 'zpk_test_EzCkzFFKibGQU6HFq7EYVuxI', password: ''
    #   }
    # )

    # ap response.parsed_response

    ap Zoop::SellerResource.new.find_by_id("0cdd51c147de4e2eb7ca02ad300c5b4a")
  end

end

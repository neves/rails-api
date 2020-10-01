module Mock
  class NotificationResource
    include HTTParty
    # base_uri "https://run.mocky.io/v3"
    base_uri "https://httpbin.org"
    format :json

    def notify(email:, message:)
      options = {
        body: {
          email: email,
          message: message
        }
      }
      # url = "/f18db565-77c3-4ee1-a610-704d8c1ebce4"
      url = "/post"
      response = self.class.post(url, options)
      response.parsed_response
    end
  end
end

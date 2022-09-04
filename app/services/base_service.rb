module Services
  class BaseService
    attr_accessor :client, :url

    def initialize
      @client = Client.new
    end

    def get_request(url, params: {} )
        client.request(:get, url, params: params)
    end

    #
    # def post_request(url, body:, headers: {})
    #   handle_response client.connection.post(url, body, headers)
    # end
    #
    # def patch_request(url, body:, headers: {})
    #   handle_response client.connection.patch(url, body, headers)
    # end
    #
    # def put_request(url, body:, headers: {})
    #   handle_response client.connection.put(url, body, headers)
    # end
    #
    # def delete_request(url, params: {}, headers: {})
    #   handle_response client.connection.delete(url, params, headers)
    # end

    # def handle_response(response)
    #   case response.status
    #   when 400
    #     raise Error, "Your request was malformed. #{response.body["error"]}"
    #   when 401
    #     raise Error, "You did not supply valid authentication credentials. #{response.body["error"]}"
    #   when 403
    #     raise Error, "You are not allowed to perform that action. #{response.body["error"]}"
    #   when 404
    #     raise Error, "No results were found for your request. #{response.body["error"]}"
    #   when 429
    #     raise Error, "Your request exceeded the API rate limit. #{response.body["error"]}"
    #   when 500
    #     raise Error, "We were unable to perform the request due to server-side problems. #{response.body["error"]}"
    #   when 503
    #     raise Error, "You have been rate limited for sending more than 20 requests per second. #{response.body["error"]}"
    #   end
    # end
    def http
      client.http.headers(accept: 'application/json')
    end
  end
end



module Services
  class BaseService
    attr_accessor :client, :url

    def initialize
      @client = Client.new
    end

    def get_request(url, params: {} )
        client.request(:get, url, params: params)
    end

    def post_request(url, data: nil )
       client.request(:post, url, data)
    end

    def patch_request(url, data: nil)
       client.request(:patch, url, data)
    end

    def put_request(url, data: nil )
       client.request(:put, url, data)
    end

    def delete_request(url, params: {})
       client.request(:delete, url, params)
    end

  end
end



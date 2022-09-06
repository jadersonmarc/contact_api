module Services
    class PostCode::GetAddressByPostCodeService < Services::BaseService
      attr_accessor :post_code

      def initialize(params)
        super()
        @post_code = params
      end

      def call
        JSON.parse get_request(request_url).to_s
      end

      private

      def get_request(url, params: {})
        super(url)
      end

      def request_url
         base_url << post_code[:post_code].to_s
      end

      def base_url
        "http://cep.la/"
      end

    end
end


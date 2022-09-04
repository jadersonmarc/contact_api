module Services
    class PostCode::GetAddressByPostCodeService
      attr_accessor :post_code

      def initialize(params)
        @request = Services::BaseService.new
        @post_code = params
      end

      def call
        url = base_url << post_code[:cep]
        JSON.parse @request.get_request(url).to_s
      end

      private

      def get_post_code(params)
      end

      def base_url
        "http://cep.la/"
      end

    end
end


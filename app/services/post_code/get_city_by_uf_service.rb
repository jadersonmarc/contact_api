module Services
    class PostCode::GetStateByUfService
      attr_accessor :state

      def initialize(params)
        @request = Services::BaseService.new
        @state = params
      end

      def call
        # url = base_url << state[:state] << state[:city]
        # to do
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


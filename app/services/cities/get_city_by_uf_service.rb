module Services
    class Cities::GetStateByUfService
      attr_accessor :state

      def initialize(params)
        @request = Services::BaseService.new
        @state = params
      end

      def call

        JSON.parse @request.get_request(request_url).to_s
      end

      private

      def request_url
        base_url << state[:state]
      end

      def base_url
        "http://cep.la/"
      end

    end
end


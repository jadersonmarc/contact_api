module Services
    class Cities::GetCitiesByStateService < Services::BaseService
      attr_accessor :state

      def initialize(params)
        super()
        @state = params
      end

      def call
        JSON.parse get_request(request_url).to_s
      end

      private

      def get_request(url, params: {})
        super(url)
      end

      def request_url
        base_url << state[:state]
      end

      def base_url
        "http://cep.la/"
      end

    end
end


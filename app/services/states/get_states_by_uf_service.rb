module Services
    class States::GetStatesByUfService < Services::BaseService
      attr_accessor :state

      def initialize
        super()
      end

      def call
        JSON.parse get_request(request_rul).to_s
      end

      private

      def get_request(url, params: {})
        super(url)
      end

      def request_rul
         base_url
      end

      def base_url
        "http://cep.la/"
      end

    end
end


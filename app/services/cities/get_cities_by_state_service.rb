module Services
    class Cities::GetCitiesByStateService < Services::BaseService
      attr_accessor :city

      def initialize(params)
        super()
        @city = params
      end

      def call
        JSON.parse get_request(request_url).to_s
      end

      private

      def get_request(url, params: {})
        super(url)
      end

      def request_url
        path = city.present? ? city[:city] : ''
        base_url << path.to_s
      end

      def base_url
        "http://cep.la/"
      end

    end
end


require 'http'
require 'json'

module Services
  class BaseService
    protected

    def request(method, url, data: nil, params: {})
      params = method == :get ? { params: params } : { json: data, params: params }
      http.request(method, base_url + url, params)
    rescue HTTP::Error => e
      Rails.logger.error(e)

      nil
    end

    def http
      @http ||= HTTP.accept(:json)
    end

    def base_url
      raise 'need base url'
    end
  end
end



# frozen_string_literal: true

require 'http'
require 'json'

class Client


  def request(method, url, data: nil, params: {})
    params = method == :get ? { params: params } : { json: data, params: params }
     http.request(method,  url, params)

  rescue HTTP::Error => e
    Rails.logger.error(e)
    nil
  end


  def http
    HTTP.headers(:accept => "application/json")
    @http ||= HTTP.accept(:json)
  end

end
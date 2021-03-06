# frozen_string_literal: true

module Ebisu
  module Faraday
    module Connection
      private

      def connection
        options = {
          headers: { 'Accept' => 'application/xml,application/json' }
        }

        options[:headers]['User-Agent'] = user_agent if user_agent
        options[:proxy] = proxy if proxy

        request_options = {}
        request_options[:timeout] = timeout if timeout
        request_options[:open_timeout] = open_timeout if open_timeout
        options[:request] = request_options if request_options.any?

        ::Faraday::Connection.new(endpoint, options) do |connection|
          connection.use ::Faraday::Request::UrlEncoded
          connection.use ::Faraday::Response::RaiseError
          connection.response :xml,  content_type: /\bxml$/
          connection.response :json, content_type: /\bjson$/
          require 'logger'
          connection.response :logger, logger if logger
          connection.adapter ::Faraday.default_adapter
        end
      end
    end
  end
end

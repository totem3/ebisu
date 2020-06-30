# frozen_string_literal: true

module Ebisu
  module Configuration
    extend self

    ATTRIBUTES = %i[
      user_agent
      endpoint
      appid
      proxy
      logger
      timeout
      open_timeout
    ].freeze

    ATTRIBUTES.each do |a|
      attr_accessor a
    end

    def reset
      self.endpoint = 'https://shopping.yahooapis.jp/ShoppingWebService/'
      self.user_agent = "YahooShopping Ruby Client/#{Ebisu::VERSION}"
      self.appid = nil
      self.proxy = nil
      self.logger = nil
      self.timeout = 10
      self.open_timeout = 5
    end
  end
  Configuration.reset

  class Client
    include Ebisu::Faraday::Connection
    include Ebisu::Faraday::Request
    include Ebisu::Apis

    Configuration::ATTRIBUTES.each do |a|
      attr_accessor a
    end

    def initialize(options = {})
      Configuration::ATTRIBUTES.each do |key|
        send("#{key}=", options[key] || Configuration.send(key))
      end
      @logger ||= Configuration.logger || ::Logger.new(STDOUT)
      @appid ||= Configuration.appid
    end

    class << self
      def configure
        block_given? ? yield(Configuration) : Configuration
      end
    end
  end
end

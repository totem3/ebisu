# frozen_string_literal: true

module Ebisu
  class Shipping
    # @!attribute code
    #   @return [String]
    attr_reader :code

    # @!attribute name
    #   @return [String]
    attr_reader :name

    def initialize(shipping)
      @code = shipping.dig('code')
      @name = shipping.dig('name')
    end
  end
end

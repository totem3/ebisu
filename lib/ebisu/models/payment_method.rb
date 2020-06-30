# frozen_string_literal: true

module Ebisu
  class PaymentMethod
    # @!attribute code
    #   @return [Integer]
    attr_reader :code

    # @!attribute name
    #   @return [String]
    attr_reader :name
    def initialize(data)
      @code = data.dig('Code').to_i
      @name = data.dig('Name')
    end
  end
end

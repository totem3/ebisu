module Ebisu
  class Shipping
    # @!attribute code
    #   @return [String]
    attr_reader :code

    # @!attribute name
    #   @return [String]
    attr_reader :name

    def initialize(shipping)
      @code = shipping.dig('Code')
      @name = shipping.dig('Name')
    end
  end
end


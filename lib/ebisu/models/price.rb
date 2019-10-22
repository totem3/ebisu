module Ebisu
  class Price
    # @!attribute value
    #   @return [Integer]
    attr_reader :value

    # @!attribute currency
    #   @return [String]
    attr_reader :currency

    def initialize(price)
      case price
      when Hash
        @value = Integer(price['__content__'])
        @currency = price['currency']
      when String
        @value = Integer(price)
        @currency = 'JPY'
      when Integer
        @value = price
        @currency = 'JPY'
      else
        raise "assertion failed. invalid price response value: #{price}"
      end
    end
  end
end

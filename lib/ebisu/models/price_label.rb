module Ebisu
  class PriceLabel
    # @!attribute is_inclusive
    #   @return [True|False]
    attr_reader :is_inclusive

    # @!attribute fixed_price
    #   @return [Integer|Nil]
    attr_reader :fixed_price

    # @!attribute default_price
    #   @return [Integer|Nil]
    attr_reader :default_price

    # @!attribute sale_price
    #   @return [Integer|Nil]
    attr_reader :sale_price

    # @!attribute base_fixed_price
    #   @return [Integer|Nil]
    attr_reader :base_fixed_price

    # @!attribute base_sale_price
    #   @return [Integer|Nil]
    attr_reader :base_sale_price

    # @!attribute period_start
    #   @return [String]
    attr_reader :period_start

    # @!attribute period_end
    #   @return [String]
    attr_reader :period_end

    def initialize(price_label)
      @is_inclusive = price_label['taxIncluded'] == 'true'
      @fixed_price = price_label['FixedPrice']
      @default_price = price_label['DefaultPrice']
      @sale_price = price_label['SalePrice']
      @base_fixed_price = price_label['BaseFixedPrice']
      @base_sale_price = price_label['BaseSalePrice']
      @period_start = price_label['PeriodStart']
      @period_end = price_label['PeriodEnd']
    end
  end
end


# frozen_string_literal: true

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
      @is_inclusive = price_label['taxable']
      @fixed_price = price_label['fixedPrice']
      @default_price = price_label['defaultPrice']
      @sale_price = price_label['salePrice']
      @period_start = price_label['periodStart']
      @period_end = price_label['periodEnd']
    end
  end
end

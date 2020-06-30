# frozen_string_literal: true

module Ebisu
  class Point
    # @!attribute amount
    #   @return [Integer]
    attr_reader :amount
    # @!attribute times
    #   @return [Integer]
    attr_reader :times
    # @!attribute premium_amount
    #   @return [Integer]
    attr_reader :premium_amount
    # @!attribute premium_times
    #   @return [Integer]
    attr_reader :premium_times

    def initialize(point)
      @amount = point.dig('Amount').to_i
      @times = point.dig('Times').to_i
      @premium_amount = point.dig('PremiumAmount').to_i
      @premium_times = point.dig('PremiumTimes').to_i
    end
  end
end

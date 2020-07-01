# frozen_string_literal: true

module Ebisu
  class Point
    # @!attribute amount
    #   @return [Integer]
    attr_reader :amount
    # @!attribute times
    #   @return [Integer]
    attr_reader :times

    def initialize(point)
      @amount = point.dig('amount').to_i
      @times = point.dig('times').to_i
    end
  end
end

# frozen_string_literal: true

module Ebisu
  class StoreRatings
    # @!attribute rate
    #   @return [Float]
    attr_reader :rate

    # @!attribute count
    #   @return [Integer]
    attr_reader :count
    def initialize(data)
      @rate = data.dig('rate').to_f
      @count = data.dig('reviewCount').to_i
    end
  end
end

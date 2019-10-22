module Ebisu
  class StoreRatings
    # @!attribute rate
    #   @return [Float]
    attr_reader :rate

    # @!attribute count
    #   @return [Integer]
    attr_reader :count
    def initialize(data)
      @rate = data.dig('Rate').to_f
      @count = data.dig('Count').to_i
    end
  end
end


module Ebisu
  class Review
    # @!attribute rate
    #   @return [Float]
    attr_reader :rate

    # @!attribute count
    #   @return [Integer]
    attr_reader :count

    # @!attribute url
    #   @return [String]
    attr_reader :url

    def initialize(review)
      @rate = review.dig('Rate').to_f
      @count = review.dig('Count').to_i
      @url = review.dig('Url')
    end
  end

end

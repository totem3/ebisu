# frozen_string_literal: true

module Ebisu
  class ExImage
    # @!attribute url
    #   @return [String]
    attr_reader :url

    # @!attribute width
    #   @return [Integer]
    attr_reader :width

    # @!attribute height
    #   @return [Integer]
    attr_reader :height

    def initialize(image)
      return unless image

      @url = image.dig('url')
      @width = image.dig('width')
      @height = image.dig('height')
    end
  end
end

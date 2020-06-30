# frozen_string_literal: true

module Ebisu
  class Brands
    # @!attribute name
    #   @return [String]
    attr_reader :name

    # @!attribute id
    #   @return [Integer]
    attr_reader :id
    def initialize(brands)
      @id = brands.dig('id')
      @name = brands.dig('name')
    end
  end
end

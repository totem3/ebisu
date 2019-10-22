module Ebisu
  class Brands
    # @!attribute name
    #   @return [String]
    attr_reader :name

    # @!attribute path
    #   @return [String]
    attr_reader :path
    def initialize(brands)
      @name = brands.dig('Name')
      @path = brands.dig('Path', 'Brand')
    end
  end
end



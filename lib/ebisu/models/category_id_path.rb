# frozen_string_literal: true

module Ebisu
  class CategoryIdPath
    # @!attribute path
    #   @return [Array[String]]
    attr_reader :path
    def initialize(data)
      @path = case data
              when Array
                data.map { |x| x['id'] }
              else
                []
              end
    end
  end
end

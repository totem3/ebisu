# frozen_string_literal: true

module Ebisu
  class Image
    # @!attribute id
    #   @return [String]
    attr_reader :id

    # @!attribute small
    #   @return [String]
    attr_reader :small

    # @!attribute medium
    #   @return [String]
    attr_reader :medium

    def initialize(id, data)
      @id = id
      @small = data['small']
      @medium = data['medium']
    end
  end
end

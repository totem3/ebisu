# frozen_string_literal: true

module Ebisu
  class StoreImage
    # @!attribute id
    #   @return [String]
    attr_reader :id

    # @!attribute medium
    #   @return [String]
    attr_reader :medium
    def initialize(data)
      @id = data.dig('Id')
      @medium = data.dig('Medium')
    end
  end
end

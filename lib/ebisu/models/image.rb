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

    def initialize(data)
      @id = data["Id"]
      @small = data["Small"]
      @medium = data["Medium"]
    end
  end
end

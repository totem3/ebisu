# frozen_string_literal: true

module Ebisu
  class YCategory
    IDAndName = Struct.new(:id, :name)

    # @!attribute current
    #   @return [IDAndName]
    attr_reader :current
    def initialize(category)
      @current = IDAndName.new(
        category.dig('id'),
        category.dig('name')
      )
    end
  end

  class CategoryDetail
    # @!attribute id
    #   @return [Integer]
    attr_reader :id

    # @!attribute name
    #   @return [String]
    attr_reader :name

    # @!attribute parent_id
    #   @return [Integer]
    attr_reader :parent_id

    def initialize(data)
      @id = data.dig('Id')
      @name = data.dig('Title', 'Short')
      @parent_id = data.dig('ParentId')
    end
  end
end

module Ebisu
  class CategoryIdPath
    # @!attribute path
    #   @return [Array[String]]
    attr_reader :path
    def initialize(data)
      category = data['Category']
      @path = case category
              when Array
                category.map { |x| x['Id'] }
              else
                []
              end
    end
  end
end

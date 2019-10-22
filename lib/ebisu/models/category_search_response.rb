# frozen_string_literal: true

require 'ebisu/models/category'

module Ebisu
  class CategorySearchResponse
    def initialize(resp)
      @original_response = resp
    end

    def [](key)
      @original_response[key]
    end

    def result_set
      @original_response['ResultSet']
    end

    def current
      Ebisu::CategoryDetail.new(result_set.dig('Result', 'Categories', 'Current'))
    end

    # @return [Array<Ebisu::CategoryDetail>]
    def children
      parent_id = current.id
      children = result_set.dig('Result', 'Categories', 'Children', 'Child')
      if children
        children.map do |child|
          child['ParentId'] = parent_id
          Ebisu::CategoryDetail.new(child)
        end
      else
        []
      end
    end
  end
end

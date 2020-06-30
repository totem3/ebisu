# frozen_string_literal: true

require 'ebisu/models/brands'
require 'ebisu/models/category'
require 'ebisu/models/category_id_path'
require 'ebisu/models/ex_image'
require 'ebisu/models/image'
require 'ebisu/models/item'
require 'ebisu/models/payment'
require 'ebisu/models/payment_method'
require 'ebisu/models/point'
require 'ebisu/models/price'
require 'ebisu/models/price_label'
require 'ebisu/models/review'
require 'ebisu/models/shipping'
require 'ebisu/models/store'
require 'ebisu/models/store_image'
require 'ebisu/models/store_ratings'

module Ebisu
  # response wrapper
  class ItemSearchResponse
    def initialize(resp)
      @original_response = resp
    end

    def [](key)
      @original_response[key]
    end

    def result_set
      @original_response
    end

    # @return [Integer] 検索総HIT数
    def total_results_available
      result_set['totalResultsAvailable'].to_i
    end

    # @return [Integer] 返された値の個数
    def total_results_returned
      result_set['totalResultsReturned'].to_i
    end

    # @return [Integer] 最初のデータが何個目にあたるか（最初＝1）
    def first_result_position
      result_set['firstResultPosition'].to_i
    end

    # @return [Array<Ebisu::Item>] 検索結果のアイテムのリスト
    def hits
      (result_set['hits'] || []).map { |hit| Ebisu::Item.new(hit) }
    end
  end
end

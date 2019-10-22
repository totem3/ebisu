require 'ebisu/models/category_search_response'
module Ebisu
  module Apis
    module CategorySearch
      # @param [Integer] category_id
      # @param [Hash] options
      # @option options [String] :output 出力形式 ( xml, php, jsonp )
      # @option options [String] :affiliate_type バリューコマースアフィリエイト(vc)
      # @option options [String] :affiliate_id バリューコマースアフィリエイトのID
      # @option options [String] :callback JSONPの場合のコールバック
      def category_search(category_id, options = {})
        options.merge!(category_id: category_id)
        Ebisu::CategorySearchResponse.new get('categorySearch', options)
      end
    end
  end
end

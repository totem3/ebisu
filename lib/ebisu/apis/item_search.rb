# frozen_string_literal: true

require 'ebisu/models/item_search_response'
module Ebisu
  module Apis
    module ItemSearch
      # @param [Hash] options
      # @option options [String] :affiliate_type バリューコマースアフィリエイト(vc)
      # @option options [String] :affiliate_id バリューコマースアフィリエイトのID
      # @option options [String] :query
      # @option options [Integer] :jan_code JANコード
      # @option options [Integer] :isbn ISBNコード
      # @option options [Integer] :image_size 画像サイズ. 76, 106, 132, 146, 300, 600
      # @option options [Integer] :genre_category_id カテゴリID.カンマ区切りで複数指定
      # @option options [String] :brand_id
      # @option options [String] :seller_id
      # @option options [Integer] :price_from
      # @option options [Integer] :price_to
      # @option options [Float] :affiliate_rate_from
      # @option options [Float] :affiliate_rate_to
      # @option options [Boolean] :preorder
      # @option options [Integer] :hits
      # @option options [Integer] :start
      # @option options [String] :module priceranges/subcategories
      # @option options [Boolean] :in_stock
      # @option options [Boolean] :is_discounted
      # @option options [String] :shipping (free/conditional_free)
      # @option options [String] :user_rank diamond/platinum/gold/silver/bronze/guest
      # @option options [Integer] :sale_end_from
      # @option options [Integer] :sale_end_to
      # @option options [Integer] :sale_start_from
      # @option options [Integer] :sale_start_to
      # @option options [String] :delivery_area
      # @option options [Integer] :delivery_day
      # @option options [Integer] :delivery_deadline
      # @option options [String] :sort (商品価格：price/ストア名：name/おすすめ順：score（デフォルト）/ レビュー数順：review_count)
      # @option options [String] :condition (all/new/used)
      #
      # @return [Ebisu::ItemSearchResponse]
      def item_search(options = {})
        Ebisu::ItemSearchResponse.new(get('V3/itemSearch', options))
      end
    end
  end
end

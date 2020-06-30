# frozen_string_literal: true

require 'ebisu/models/item_search_response'
module Ebisu
  module Apis
    module ItemSearch
      # @param [Hash] options
      # @option options [String] :query
      # @option options [String] :category_id
      # @option options [String] :product_id
      # @option options [String] :person_id
      # @option options [String] :brand_id
      # @option options [String] :store_id
      # @option options [Integer] :price_from
      # @option options [Integer] :price_to
      # @option options [Float] :affiliate_from
      # @option options [Float] :affiliate_to
      # @option options [Integer] :preorder
      # @option options [Integer] :hits
      # @option options [Integer] :offset
      # @option options [String] :module priceranges/subcategories
      # @option options [Integer] :availability
      # @option options [Integer] :discount
      # @option options [Integer] :shipping (1/2)
      # @option options [String] :payment
      #   ウォレット対応カード：yahoowallet
      #   クレジットカード：creditcard
      #   商品代引：cod
      #   銀行振込：banktransfer
      #   郵便振替：pmo
      #   モバイルSuica：mobilesuica
      #   ペイジー：payeasy
      #   Yahoo!マネー/預金払い：yahoomoney
      #   コンビニ：convenience
      # @option options [String] :license diamond/platinum/gold/silver/bronze/guest
      # @option options [String] :salestart_from
      # @option options [String] :salestart_to
      # @option options [String] :saleend_from
      # @option options [String] :saleend_to
      # @option options [String] :seller (all/store/consumer)
      # @option options [String] :sort (商品価格：price/ストア名：name/おすすめ順：score（デフォルト）/ レビュー数順：review_count)
      # @option options [String] :condition (all/new/used)
      # @option options [String] :output 出力形式 ( xml, php, jsonp )
      # @option options [String] :affiliate_type バリューコマースアフィリエイト(vc)
      # @option options [String] :affiliate_id バリューコマースアフィリエイトのID
      # @option options [String] :callback JSONPの場合のコールバック
      #
      # @return [Ebisu::ItemSearchResponse]
      def item_search(options = {})
        Ebisu::ItemSearchResponse.new(get('itemSearch', options))
      end
    end
  end
end

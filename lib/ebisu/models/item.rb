# frozen_string_literal: true

module Ebisu
  class Item
    # @!attribute name
    #   @return [String]
    attr_reader :name

    # @!attribute description
    #   @return [String]
    attr_reader :description

    # @!attribute headline
    #   @return [String]
    attr_reader :headline

    # @!attribute url
    #   @return [String]
    attr_reader :url

    # @!attribute [r] availability
    #   @return [Ebisu::Item::Availability]
    attr_reader :availability

    # @!attribute code
    #   @return [String]
    attr_reader :code

    # @!attribute image
    #   @return [Ebisu::Image]
    attr_reader :image

    # @!attribute price
    #   @return [Ebisu::Price]
    attr_reader :price

    # @!attribute price_label
    #   @return [Ebisu::PriceLabel]
    attr_reader :price_label

    # @!attribute jan_code
    #   @return [String]
    attr_reader :jan_code

    # @!attribute model
    #   @return [String]
    attr_reader :model

    # @!attribute isbn_code
    #   @return [String]
    attr_reader :isbn_code

    # @!attribute release_date
    #   @return [String]
    attr_reader :release_date

    # @!attribute ex_image
    #   @return [Ebisu::ExImage]
    attr_reader :ex_image

    # @!attribute review
    #   @return [Ebisu::Review]
    attr_reader :review

    # @!attribute point
    #   @return [Ebisu::Point]
    attr_reader :point

    # @!attribute shipping
    #   @return [Ebisu::Shipping]
    attr_reader :shipping

    # @!attribute category
    #   @return [Ebisu::YCategory]
    attr_reader :category

    # @!attribute category_id_path
    #   @return [Ebisu::CategoryIdPath]
    attr_reader :category_id_path

    # @!attribute brands
    #   @return [Ebisu::Brands]
    attr_reader :brands

    # @!attribute store
    #   @return [Ebisu::Store]
    attr_reader :store

    # @!attribute affiliate_rate
    #   @return [Float]
    attr_reader :affiliate_rate

    class Availability
      def initialize(in_stock)
        @available = in_stock
      end

      # @return [True|False]
      def available?
        @available
      end
    end

    # @param [Hash] hit
    def initialize(hit)
      @name = hit.dig('name')
      @description = hit.dig('description')
      @headline = hit.dig('headLine')
      @url = hit.dig('url')
      @availability = Availability.new(hit.dig('inStock'))
      @code = hit.dig('code')
      @price = Ebisu::Price.new(hit.dig('price'))
      @price_label = Ebisu::PriceLabel.new(hit.dig('priceLabel'))
      @jan_code = hit.dig('janCode')
      @model = hit.dig('model')
      @isbn_code = hit.dig('isbnCode')
      @release_date = hit.dig('releaseDate')
      @image = Ebisu::Image.new(hit.dig('imageId'), hit.dig('image'))
      @ex_image = Ebisu::ExImage.new(hit.dig('exImage')) if hit.dig('exImage')
      @review = Ebisu::Review.new(hit.dig('review'))
      @affiliate_rate = hit.dig('affiliateRate')
      @point = Ebisu::Point.new(hit.dig('point'))
      @shipping = Ebisu::Shipping.new(hit.dig('shipping'))
      @category = Ebisu::YCategory.new(hit.dig('genreCategory'))
      @category_id_path = Ebisu::CategoryIdPath.new(hit.dig('parentGenreCategories'))
      @brands = Ebisu::Brands.new(hit.dig('brand'))
      @store = Ebisu::Store.new(hit.dig('seller'))
    end
  end
end

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

    # @!attribute person_id
    #   @return [String]
    attr_reader :person_id

    # @!attribute product_id
    #   @return [String]
    attr_reader :product_id

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

    class Availability
      def initialize(v)
        case v
        when 'instock'
          @available = true
        when 'outofstock'
          @available = false
        else
          @available = false
        end
      end

      # @return [True|False]
      def available?
        @available
      end
    end

    def initialize(hit)
      @name = hit.dig('Name')
      @description = hit.dig('Description')
      @headline = hit.dig('Headline')
      @url = hit.dig('Url')
      @availability = Availability.new(hit.dig('Availability'))
      @code = hit.dig('Code')
      @person_id = hit.dig('PersonId')
      @product_id = hit.dig('ProductId')
      @price = Ebisu::Price.new(hit.dig('Price'))
      @price_label = Ebisu::PriceLabel.new(hit.dig('PriceLabel'))
      @jan_code = hit.dig('JanCode')
      @model = hit.dig('Model')
      @isbn_code = hit.dig('IsbnCode')
      @release_date = hit.dig('ReleaseDate')
      @image = Ebisu::Image.new(hit.dig('Image'))
      @ex_image = Ebisu::ExImage.new(hit.dig('ExImage'))
      @review = Ebisu::Review.new(hit.dig('Review'))
      @point = Ebisu::Point.new(hit.dig('Point'))
      @shipping = Ebisu::Shipping.new(hit.dig('Shipping'))
      @category = Ebisu::YCategory.new(hit.dig('Category'))
      @category_id_path = Ebisu::CategoryIdPath.new(hit.dig('CategoryIdPath'))
      @brands = Ebisu::Brands.new(hit.dig('Brands'))
      @store = Ebisu::Store.new(hit.dig('Store'))
    end
  end
end

module Ebisu
  class Store
    # @!attribute id
    #   @return [String]
    attr_reader :id

    # @!attribute name
    #   @return [String]
    attr_reader :name

    # @!attribute payment
    #   @return [Ebisu::Payment]
    attr_reader :payment

    # @!attribute is_best_store
    #   @return [True|False]
    attr_reader :is_best_store

    # @!attribute ratings
    #   @return [Ebisu::StoreRatings]
    attr_reader :ratings

    # @!attribute image_id
    #   @return [String]
    attr_reader :image_id

    # @!attribute ratings
    #   @return [Ebisu::StoreRatings]
    attr_reader :ratings
    def initialize(data)
      @id = data.dig('sellerId')
      @name = data.dig('name')
      @payment = Ebisu::Payment.new(data.dig('payment'))
      @is_best_store = data.dig('isBestSeller')
      @ratings = Ebisu::StoreRatings.new(data.dig('review'))
      @image_id = data.dig('imageId')
    end
  end
end

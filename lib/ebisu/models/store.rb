module Ebisu
  class Store
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
    def initialize(data)
      @name = data.dig('Name')
      @payment = Ebisu::Payment.new(data.dig('Payment'))
      @is_best_store = data.dig('IsBestStore') == 'true'
      @ratings = Ebisu::StoreRatings.new(data.dig('Ratings'))
      @image = Ebisu::StoreImage.new(data.dig('Image'))
    end
  end
end

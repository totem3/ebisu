module Ebisu
  class Payment
    # @!attribute method
    #   @return [Array[PaymentMethod]]
    attr_reader :method
    def initialize(data)
      @method = case data['Method']
                when Array
                  data['Method'].map { |x| PaymentMethod.new(x) }
                when NilClass
                  []
                else
                  [PaymentMethod.new(data)]
                end
    end
  end
end


module Spree
  Variant.class_eval do
    before_validation :set_sku
    before_validation :set_price

    def size_option
      option_values.find{|v| v.option_type.name == 'size'}
    end

    def pretty_size
      size_option && size_option.presentation
    end

    def size
      size_option && size_option.name
    end

    def determine_price size
      {
        "8x12" => 10, "12x18" => 25, "16x24" => 50, "24x36" => 115,
        "6x12" => 10, "10x20" => 25, "15x30" => 40, "20x40" => 100
      }[size]
    end

    def padded_price price
      price * 1.4
    end

  private

    def set_sku
      return true if is_master?
      self.sku = "#{product.sku}-#{size}"
    end

    def set_price
      return true if is_master?
      self.price = padded_price(determine_price(size))
    end
  end
end

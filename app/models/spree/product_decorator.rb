module Spree
  Product.class_eval do
    before_validation :set_sku

    def set_sku
      return if self.sku.present?

      self.sku = self.name.parameterize.upcase
    end
  end
end

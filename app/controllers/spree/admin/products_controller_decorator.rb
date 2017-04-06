module Spree
  module Admin
    ProductsController.class_eval do
      new_action.before :set_defaults
      create.after :set_taxons

      def set_defaults
        product = load_resource
        product.available_on = "2017/01/01"
        product.price = 25
        product.shipping_category = ShippingCategory.first
      end

      def set_taxons
        @product.taxon_ids = [params[:product][:taxon_ids]]
      end

      def location_after_save
        new_admin_product_image_path(@product)
      end
    end
  end
end

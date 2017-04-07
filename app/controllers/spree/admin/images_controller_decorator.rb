module Spree
  module Admin
    ImagesController.class_eval do
			def location_after_save
        new_admin_product_path
      end
    end
  end
end

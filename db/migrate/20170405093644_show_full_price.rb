class ShowFullPrice < ActiveRecord::Migration[5.0]
  def change
    Spree::Config[:show_variant_full_price] = true
  end
end

class PerPgeBoost < ActiveRecord::Migration[5.0]
  def change
    Spree::Config[:products_per_page] = 100
  end
end

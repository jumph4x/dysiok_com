class ChangeLogo < ActiveRecord::Migration[5.0]
  def change
    Spree::Config.logo = "dysiok-v2.png"
  end
end

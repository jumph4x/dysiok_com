module ApplicationHelper

  def random_product
    Spree::Product.available.offset(rand(Spree::Product.count)).first
  end

end

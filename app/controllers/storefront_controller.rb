class StorefrontController < ApplicationController
  def all_items
  	@products = Product.all
  end

  def items_by_category
  	# @category = Category.find(params[:cat_id])
  	# products = Product.all
  	# @products = []

  	# products.each do |product|
  	# 	if product.category.id == @category.id
  	# 	@products.push(product)
  	# 	end
  	# end
  	@products = Product.where(category_id: params[:cat_id])
  	@category = Category.find(params[:cat_id])

  end

  def items_by_brand
  end
end

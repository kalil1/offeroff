class HomeController < ApplicationController

  def home
    if params[:category].blank?
	     @products = Product.all.order("created_at DESC")
		else
			@category_id = Category.find_by(name: params[:category]).id
			@products = Product.where(:category_id => @category_id).order("created_at DESC")
		end

  end

end

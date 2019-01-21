class ProfileController < ApplicationController
  before_action :authenticate_user!
  before_action :set_user

  def show

  end

  def index
  end

  private
  def set_user
    @user = current_user
    @products = Product.where(user: @user)
    @recent_product = @products.last
  end
end

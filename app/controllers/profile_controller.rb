class ProfileController < ApplicationController
  before_action :set_user
  def show
    @product = Product.where(user: @user).last
    @products = Product.where(user: @user)
  end

  def index
  end
  private

  def set_user
    @user = current_user
  end
end

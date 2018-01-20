class ProductsController < ApplicationController
  def index
    @cart = cart
  end

  def add
    render :index
  end
end

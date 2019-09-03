class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :cart

  def cart
    session[:cart] ||= []
  end

  # def add_to_cart
  #   @product = Product.find(params[:id])
  #   current_cart << @product.id
  # end

  # def cart
  #   @product = Product.find(params[:id])
  #
  #   cart = session[:cart] || []
  #   cart << @product.id
  #
  #   session[:cart] = cart
  # end

end

class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
  end

  def create
    @cart = cart
    @cart << params["product"]
    redirect_to products_path(@cart)
  end

  def cart
    if !session[:cart]
      session[:cart] = []
    end
    session[:cart]
  end
end

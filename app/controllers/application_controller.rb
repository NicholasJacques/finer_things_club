class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def cart
    @cart ||= Cart.new(session[:cart])
  end
end

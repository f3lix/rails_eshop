module CartsHelper
  def current_cart=(cart)
  	@current_cart = cart
  end

  def current_cart?(cart)
  	cart == current_cart
  end

  def current_cart
  	@current_cart ||= Cart.find(session[:cart_id])
  end
end
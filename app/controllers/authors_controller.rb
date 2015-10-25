class AuthorsController < ApplicationController
  def show
    @author = Author.new
  end

  def create
    @author
  #   @order = Order.new(order_params)
  #   @order.bill = current_checkin_bill
  #   @order.user = current_user
  #   @order.save!
  #   redirect_to shop_shop_menus_path(current_checkin_shop)
  # rescue ActiveRecord::RecordInvalid
  #   redirect_to shop_menu_path(@order.shop_menu), notice: t('orders.create.failure')
  end

end

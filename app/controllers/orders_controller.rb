class OrdersController < ApplicationController
  def create
    customer = Customer.find(params[:customer_id]) rescue nil;
    order = Order.new(token: params[:stripeToken], customer: customer)

    respond_to do |format|
      if order.save
        # flash[:notice].push 'Customer created successfully'
      else
        # flash[:error].push "Error: #{@customer.errors.full_messages.join('. ')}"
      end

      format.html { redirect_to customers_path }
    end
  end
end

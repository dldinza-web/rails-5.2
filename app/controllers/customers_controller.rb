class CustomersController < ApplicationController
  def index
    @total = Customer.count
    @customers = Customer.all
    @customer = Customer.new
  end

  def new
    @customer = Customer.new
  end

  def create
    @customer =  Customer.new filter_params

    respond_to do |format|
      if @customer.save
        flash[:notice].push 'Customer created successfully'
        format.html { redirect_to root_path }
      else
        flash[:error].push "Error: #{@customer.errors.full_messages.join('. ')}"
        format.html { redirect_to new_customers_path }
      end
    end

  end

  def filter_params
    params.require(:customer).permit(:name)
  end
end

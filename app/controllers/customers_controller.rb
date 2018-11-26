class CustomersController < ApplicationController
  def index
    @total = Customer.count
    @customers = Customer.all

    @customer = Customer.first
    @order = Order.new(customer: @customer)
  end
end

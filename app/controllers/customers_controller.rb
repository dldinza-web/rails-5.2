class CustomersController < ApplicationController
  def index
    @total = Customer.count
    @customers = Customer.all

    last_customer = Customer.last
    @customer = last_customer.order.present? ? Customer.new : last_customer
  end
end

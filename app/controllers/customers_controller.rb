class CustomersController < ApplicationController
  def index
    @total = Customer.count
    @customers = Customer.all

    @customer = Customer.new
  end
end

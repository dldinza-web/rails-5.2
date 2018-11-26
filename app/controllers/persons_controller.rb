class PersonsController < ApplicationController
  def create
    @customer =  Customer.new(name: params[:stripeEmail])

    respond_to do |format|
      if @customer.save
        # flash[:notice].push 'Customer created successfully'
      else
        # flash[:error].push "Error: #{@customer.errors.full_messages.join('. ')}"
      end

      format.html { redirect_to root_path }
    end
  end
end

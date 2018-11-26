class ApplicationController < ActionController::Base
  before_action :init_messages

  private

  def init_messages
    puts flash[:notice].inspect
    flash[:notice] = [] if flash[:notice].nil?
    flash[:error] = [] if flash[:error].nil?
    puts flash[:notice].inspect
  end
end

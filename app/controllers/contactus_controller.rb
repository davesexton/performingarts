class ContactusController < ApplicationController

  skip_before_filter :authorize

  def index
    @message = Message.new
  end

  def send_message

  end

end

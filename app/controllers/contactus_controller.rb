class ContactusController < ApplicationController

  skip_before_filter :authorize

  def index
    @message = Message.new
  end

  def send_message

    @message = Message.new(params[:message])

    respond_to do |format|
      if @message.save
        #format.html { redirect_to @message, notice: 'Thank you for your message' }
        Contact.contact_message(@message).deliver
        format.html { redirect_to contactus_path, notice: 'Thank you for your message' }
      else
        #format.html { render action: "new" }
        format.html { redirect_to contactus_path }
      end
      #redirect_to contactus_path
    end

  end

end

class HomeController < ApplicationController
  def index
    @contact = Contact.new
  end

  def contact_us
    @contact = Contact.new(contact_params)
    if verify_recaptcha(model: @contact) && @contact.save
      ContactUsMailer.notification_user(@contact, the_domain).deliver_now
      ContactUsMailer.notification_dev(@contact, the_domain).deliver_now
      ContactUsMailer.notification_admin(@contact, the_domain).deliver_now
      flash[:notice] = 'Message was successfully sent.'
      redirect_to contact_us_path(anchor: "cu-form")
    else
      flash[:error] = "Message failed to send"
      render :action => :index
    end
  end
end

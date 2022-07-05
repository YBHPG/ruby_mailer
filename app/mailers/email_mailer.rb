class EmailMailer < ApplicationMailer
  def send_email
    @email = params[:email]
    mail from: @email.sender, to: @email.recipient, subject: @email.subject
  end
end

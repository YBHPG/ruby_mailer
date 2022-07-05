class EmailsController < ApplicationController

  def index
  end

  def create
    @email = Email.create(
      sender: params[:email][:sender],
      recipient: params[:email][:recipient],
      subject: params[:email][:subject],
      body: params[:email][:body],
    )
    EmailMailer.with(email: @email).send_email.deliver_later
    redirect_to emails_path
  end

  def new
    @email = Email.new
  end

  def all
    @emails = Email.all
  end

  def show_one
    @email = params[:email]
  end
end

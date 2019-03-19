# frozen_string_literal: true

class UserMailer < ApplicationMailer
  default from: 'admin@bikershop.com'

  def contact_form(email, name, message)
    @message = message
    mail(from: email,
         to: 'p.d.dalavi@gmail.com',
         subject: "A new contact form message from #{name}")
  end
end

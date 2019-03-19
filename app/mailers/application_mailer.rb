# frozen_string_literal: true

class ApplicationMailer < ActionMailer::Base
  default from: 'admin@bikershop.com'
  layout 'mailer'
end

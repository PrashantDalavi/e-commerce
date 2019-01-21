# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview
    def contact_form
        UserMailer.contact_form("john@example.com", "John", "Hello World!.. i am just testing itout lets see where do i end up with")
    end
end
require 'rails_helper'

describe User do
    context "when the User is present with valid email and password" do
        let(:user) {User.create!(email: "admin@admin.com", password: "123456")}
    
        it "is a valid user" do 
            expect(User.new(email: "test@test.com", password: "123456")).to be_valid
        end

        it "is not a valid user without email" do 
            expect(User.new(email: "", password: "123456")).not_to be_valid
        end

        it "is not a valid user without password " do 
            expect(User.new(email: "test@test.com", password: "")).not_to be_valid
        end
    end
end
require 'rails_helper'

RSpec.describe "Em sign in" do
    context "tentar logar como admin" do
        it "e conseguir" do
            User.create(email: "adm@adm", password: "admins", admin: true)
            visit '/users/sign_in'
            fill_in 'user_email', :with => 'adm@adm'
            fill_in 'user_password', :with => 'admins'
            click_button 'Login'
            expect(page).to have_content 'Seja bem vinde, admin cujo email é adm@adm!'
        end
    end
end

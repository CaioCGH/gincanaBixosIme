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

RSpec.describe "Em sign up" do
#    context "tentar criar usuario e bixe" do
#        it "e conseguir" do
#            visit '/users/sign_up'
#            fill_in 'user_email', :with => 'caina@usp.br'
#            fill_in 'user_password', :with => 'caina123'
#            click_button 'Sign up'
#            fill_in 'Nome Completo', :with => 'Cainã Setti'
#            fill_in 'Telefone', :with => '938121210'
#            select 'Bacharelado em Ciência da Computação', :from => 'Curso'
#            check 'Gostaria de ter um veterano tutor'
#            click_button 'Cadastrar bixe'
#            expect(Newcomer.find_by_name('Cainã Setti').telephone).to eq("938121210")
#
#        end
#        it "e ir para página inicial" do
#            visit '/users/sign_up'
#            fill_in 'user_email', :with => 'caina.setti@usp.br'
#            fill_in 'user_password', :with => 'caina123'
#            click_button 'Sign up'
#            fill_in 'Nome Completo', :with => 'Cainã Setti Galante'
#            fill_in 'Telefone', :with => '938121211'
#            select 'Bacharelado em Ciência da Computação', :from => 'Curso'
#            check 'Gostaria de ter um veterano tutor'
#            click_button 'Cadastrar bixe'
#            expect(page).to have_content 'Seja bem vinde'
#        end
#    end
#end


require 'rails_helper'

RSpec.describe "Em Bixe" do
    context "tentar criar novo bixe" do
        it "e conseguir" do
            User.create(email: "william.shatner@usp.br", password: "bixe123", admin: false)
            Course.create(name: "Bacharelado em Ciência da Computação", alias: "BCC")
            newbixe = Newcomer.create(name: "William Shatner", telephone: "987654321", course_id: 1, team_id: nil, user_id: 1, tutor: true, is_valid: false)
            newbixe.save!
            expect(Newcomer.find(newbixe.id).name).to eq("William Shatner")
        end
        #it "e falhar" do
        #	qnt = Newcomer.count 
        #	User.create(email: "william.shatner@uol.br", password: "bixe123", admin: false)
        #    Course.create(name: "Bacharelado em Ciência da Computação", alias: "BCC")
        #    newbixe = Newcomer.create(name: "William Shattner", telephone: "9821", course_id: 1, team_id: nil, user_id: 1, tutor: true, is_valid: false)
        #    newbixe.save!
        #    expect(Newcomer.count).to eq(count)
    end
end

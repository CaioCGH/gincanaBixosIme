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
        #end
    end
    #context "tentar atualizar bixe" do
    #	it "e conseguir" do
    #		User.create(email: "roald.dahl@usp.br", password: "bixe123", admin: false)
    #		newbixe = Newcomer.create(name: "Roald Dahl", telephone: "945956231", course_id: 6, team_id: nil, user_id: 7, tutor: false, is_valid: false)
    #		Newcomer.update(team_id: 2, is_valid: true)
    #		expect(newbixe.team_id == 2 and newbixe.is_valid == true).to be_truthy
	#	end
	#	it "e falhar" do
	#		User.create(email: "roald.dahl@usp.br", password: "bixe123", admin: false)
    #		newbixe = Newcomer.create(name: "Roald Dahl", telephone: "945956231", course_id: 6, team_id: nil, user_id: 7, tutor: false, is_valid: false)
    #		Newcomer.update(telephone: "31")
    #		expect(newbixe.team_id == 2 and newbixe.is_valid == true).to be_truthy
    # 	end
	#end
	#context "tentar destruir bixe" do
    #	it "e conseguir" do
    #		user = User.create(email: "ricardo@usp.br", password: "bixe123", admin: false)
    #		newbixe = Newcomer.create(name: "Ricardo aldo", telephone: "999999999", course_id: 6, team_id: nil, user_id: user.id , tutor: false, is_valid: false)
    #		qnt = Newcomer.count
    # 		Newcomer.destroy(newbixe.id)
    #		expect(Newcomer.count).to eq(count - 1)
	#	end
	#end
end

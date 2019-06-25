require 'rails_helper'

RSpec.describe "Em Bixe" do
    context "tentar criar novo bixe" do
        it "e conseguir" do
            user = User.create(email: "william.shatner@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Ciência da Computação", alias: "BCC")
            newcomer = Newcomer.create(name: "William Shatner", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            expect(Newcomer.find(newcomer.id).name).to eq("William Shatner")
        end
        #it "e falhar pois telefone muito curto" do
        #	qnt = Newcomer.count 
        #	user = User.create(email: "william.shatner@uol.br", password: "bixe123", admin: false)
        #   course = Course.create(name: "Bacharelado em Estatística", alias: "Estat")
        #   newcomer = Newcomer.create(name: "William Shattner", telephone: "9821", course_id: course.id, team_id: nil, user_id: user.id, tutor: false, is_valid: false)
        #   expect(Newcomer.count).to eq(qnt)
        #end
    end
    #context "tentar validar bixe" do
    #	it "e conseguir" do
    #       user = User.create(email: "william.shatner@uol.br", password: "bixe123", admin: false)
    #   	course = Course.create(name: "Bacharelado em Estatística", alias: "Estat")
    #		newcomer = Newcomer.create(name: "Roald Dahl", telephone: "945956231", course_id: course.id, team_id: nil, user_id: user.id, tutor: false, is_valid: false)
    #		Newcomer.update(is_valid: true)
    #		expect(newcomer.is_valid).to be_truthy
	#	end
	#end
	#context "colocar o bixe num Time" do
	#	it "e conseguir" do
	#		user = User.create(email: "roald.dahl@usp.br", password: "bixe123", admin: false)
    # 		course = Course.create(name: "Bacharelado em Matemática", alias: "Pura")
    #		team = Team.create(name: "Vermelho", score: 0)
    #		newcomer = Newcomer.create(name: "Euclides", telephone: "961649495", course_id: course.id, team_id: nil, user_id: user.id, tutor: false, is_valid: true)
    #		newcomer.update(team_id: team.id)
    #		expect(newcomer.team_id).to eq(team.id)
    #end
	#context "tentar destruir" do
    #	it "bixe e conseguir" do
    #		user = User.create(email: "angelina.jolie@usp.br", password: "bixe123", admin: false)
    # 		course =  Course.create(name: "Bacharelado em Matemática Aplicada e Computacional", alias: "BMAC")
    # 		newcomer = Newcomer.create(name: "Angelina Jolie", telephone: "965115615", course_id: course.id, team_id: nil, user_id: course.id, tutor: false, is_valid: false)
    #		qnt = Newcomer.count
    # 		Newcomer.destroy(newcomer.id)
    #		expect(Newcomer.count).to eq(qnt - 1)
	#	end
	#	it "curso ligado a bixo e conseguir" do
	#		user = User.create(email: "pedropaulo@usp.br", password: "bixe321", admin: false)
	#		course = Course.create(name: "Bacharelado em Matemática Aplicada", alias: "Aplicada")
	#		newcomer = Newcomer.create(name: "Pedro Paulo", telephone: "999999999", course_id: course.id, team_id: nil, user_id: course.id, tutor: false, is_valid: false)
	# 		qnt = Newcomer.count
	# 		Course.destroy(course.id)
	# 		expect(Newcomer.count).to eq(qnt - 1)
	# 	end
	# 	it "time ligado a bixo e conseguir" do
	#		user = User.create(email: "paulopedro@usp.br", password: "bixe321", admin: false)
	#		course = Course.create(name: "Bacharelado em Matemática Aplicada", alias: "Aplicada")
	#		team = Team.create(name: "Amarelo", score: 0)
	#		newcomer = Newcomer.create(name: "Pedro Paulo", telephone: "999999999", course_id: course.id, team_id: team.id, user_id: course.id, tutor: false, is_valid: false)
	# 		qnt = Newcomer.count
	# 		Team.destroy(team.id)
	# 		expect(Newcomer.count).to eq(qnt - 1)
	# 	end
	#end
end

require 'rails_helper'

RSpec.describe "Em Interresse por esportes" do
    context "tentar criar novo Interresse" do
        it "e conseguir" do
            user = User.create(email: "william.shatner@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Ciência da Computação", alias: "BCC")
            newcomer = Newcomer.create(name: "William Shatner", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            sport = Sport.create(name: "Futebol")
            sin = SportInterestsNewcomer.create(newcomer_id: newcomer.id, sport_id: sport.id)
            expect(SportInterestsNewcomer.find(sin.id).sport_id).to eq(sport.id)
        end
        it "e falhar pois não tem um esporte vinculado"
            user = User.create(email: "william.shattner@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Estatística", alias: "Estat")
            newcomer = Newcomer.create(name: "William Shattner", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            qnt = SportInterestsNewcomer.count
            SportInterestsNewcomer.create(newcomer_id: newcomer.id, sport_id: nil)
            expect(SportInterestsNewcomer.count).to eq(qnt)
        end
    end
    context "tentar deletar" do
        it "um interesse e conseguir" do
            user = User.create(email: "william.shattner@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Estatística", alias: "Estat")
            newcomer = Newcomer.create(name: "William Shattner", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            sport = Sport.create(name: "Basquete")
            sin = SportInterestsNewcomer.create(newcomer_id: newcomer.id, sport_id: sport.id)
            qnt = SportInterestsNewcomer.count
            SportInterestsNewcomer.destroy(sin.id)
            expect(SportInterestsNewcomer.count).to eq(qnt - 1)
        end
        it "um esporte ligado ao um interesse e conseguir" do
            user = User.create(email: "caio.hirakawa@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Matemática", alias: "Pura")
            newcomer = Newcomer.create(name: "Caio Hirakawa", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            sport = Sport.create(name: "Bridge")
            sin = SportInterestsNewcomer.create(newcomer_id: newcomer.id, sport_id: sport.id)
            qnt = SportInterestsNewcomer.count
            Sport.destroy(sport.id)
            expect(SportInterestsNewcomer.count).to eq(qnt - 1)
        end
        it "um bixe ligado a um interesse e conseguir" do
            user = User.create(email: "victor.batistella@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Licenciatura em Matemática", alias: "Lic")
            newcomer = Newcomer.create(name: "Victor Batistella", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            sport = Sport.create(name: "Atletismo")
            sin = SportInterestsNewcomer.create(newcomer_id: newcomer.id, sport_id: sport.id)
            qnt = SportInterestsNewcomer.count
            Newcomer.destroy(newcomer.id)
            expect(SportInterestsNewcomer.count).to eq(qnt - 1)
        end
    end
end
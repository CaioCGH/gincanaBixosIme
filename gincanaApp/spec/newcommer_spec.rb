require 'rails_helper'

RSpec.describe "Bixe" do
    context "Criar bixe" do
        it "cria bixe" do
            User.create(email: "william.shatner@usp.br", password: "bixe123", admin: false)
            Course.create(name: "Bacharelado em Ciência da Computação", alias: "BCC")
            newbixe = Newcomer.create(name: "William Shatner", telephone: "987654321", course_id: 1, team_id: nil, user_id: 1, tutor: true, is_valid: false)
            newbixe.save!
            expect(Newcomer.find(newbixe.id).name).to eq("William Shatner")
        end
    end
end

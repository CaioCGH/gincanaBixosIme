require 'rails_helper'

RSpec.describe "Em Time" do
    context "tentar criar novo Time" do
        it "e conseguir" do
            team = Team.create(name: "Amarelo", score: 0)
            expect(Team.find(team.id).name).to eq("Amarelo")
        end
        it "e falhar pois a pontuação é negativa" do
            qnt = Team.count
            Team.create(name: "Azul", score: -1)
            expect(Team.count).to eq(qnt)
        end
        it "e falhar pois não tem nome" do
            qnt = Team.count
            Team.create(name: nil, score: 0)
            expect(Team.count).to eq(qnt)
        end
    end
end

RSpec.describe "Em Time" do
    context "tentar somar 100 pontos na pontuação" do
    	it "e conseguir" do
    		team = Team.create(name: "Azul", score: 0)
    		team.update(score: team.score + 100)
    		expect(team.score).to eq(100)
    	end
    end
end

RSpec.describe "Em Time" do
    context "tentar deletar" do
    	it "e conseguir" do
    		team = Team.create(name: "Verde", score: 0)
    		qnt = Team.count
    		Team.destroy(team.id)
    		expect(Team.count).to eq(qnt - 1)
    	end
    end
end

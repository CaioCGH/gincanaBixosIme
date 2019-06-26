require 'rails_helper'

RSpec.describe "Em Esporte" do
    context "tentar criar novo Esporte" do
        it "e conseguir" do
            sport = Sport.create(name: "Futebol")
            expect(Sport.find(sport.id).name).to eq("Futebol")
        end
        it "e falhar pois não tem nome" do
            qnt = Sport.count
            Sport.create(name: nil)
            expect(Sport.count).to eq(qnt)
        end
    end

    context "tentar atualizar o nome do esporte" do
    	it "e conseguir" do
    		sport = Sport.create(name: "Frisbee")
    		sport.update(name: "Ultimate Frisbee")
    		expect(sport.name).to eq("Ultimate Frisbee")
    	end
    end

    context "tentar deletar" do
    	it "e conseguir" do
    		sport = Sport.create(name: "Luta")
    		qnt = Sport.count
    		Sport.destroy(sport.id)
    		expect(Sport.count).to eq(qnt - 1)
    	end
    end
end

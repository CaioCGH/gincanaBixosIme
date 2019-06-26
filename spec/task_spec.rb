require 'rails_helper'

RSpec.describe "Em Prova" do
    context "tentar criar nova Prova" do
        it "e conseguir" do
            task = Task.create(name: "Palestras", description: "Presença em palestras vale 50 pontos", score_type: "Cada Palestra 50 pontos" , have_score: false , group: false , sendable: false, max_send: 10, have_feedback: true)
            expect(Task.find(task.id).name).to eq("Palestras")
        end
        it "e falhar pois o número de possiveis envios é negativo" do
            qnt = Task.count
            Task.create(name: "Fantasia", description: "Virá fantasiado todos os dias", score_type: "Cada fantasia somar pontos" , have_score: true , group: false, sendable: false, max_send: -1, have_feedback: false)
            expect(Task.count).to eq(qnt)
        end
        it "e falhar pois não tem nome" do
            qnt = Task.count
            Task.create(name: nil, description: "Virá fantasiado todos os dias", score_type: "Cada fantasia somar pontos" , have_score: true , group: false, sendable: false, max_send: 4, have_feedback: false)
            expect(Task.count).to eq(qnt)
        end
    end
end

RSpec.describe "Em Esporte" do
    context "tentar atualizar" do
    	it "e conseguir" do
    		task = Task.create(name: "Fantasia", description: "Virá fantasiado segunda", score_type: "Cada fantasia somar pontos" , have_score: true , group: false, sendable: false, max_send: 4, have_feedback: false)
    		task.update(description: "Virá fantasiado todos os dias")
    		expect(task.description).to eq("Virá fantasiado todos os dias")
    	end
    end
    context "tentar deletar" do
    	it "e conseguir" do
    		task = Task.create(name: "Fotos da USP", description: "Mande fotos de vários lugares da USP!", score_type: "Cada foto validada soma 50 pontos",have_score: true, group: false, sendable: true, max_send: 50, have_feedback: true)
    		qnt = Task.count
    		Task.destroy(task.id)
    		expect(Task.count).to eq(qnt - 1)
    	end
    end
end

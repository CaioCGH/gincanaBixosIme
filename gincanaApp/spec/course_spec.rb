require 'rails_helper'

RSpec.describe "Em Curso" do
    context "tentar criar novo Curso" do
        it "e conseguir" do
            course = Course.create(name: "Bacharelado em Ciência da Computação", alias: "BCC")
            expect(Course.find(course.id).name).to eq("Bacharelado em Ciência da Computação")
        end
    end
    context "tentar atualizar o curso" do
    	it "e conseguir" do
    		course = Course.create(name: "Bacharelado em Estatística", alias: "Stat")
    		course.update(alias: "Estat")
    		expect(course.alias).to eq("Estat")
    	end
    end
    context "tentar deletar" do
    	it "e conseguir" do
    		course = Course.create(name: "Bacharelado em Matemática", alias: "Pura")
    		qnt = Course.count
    		Course.destroy(course.id)
    		expect(Course.count).to eq(qnt - 1)
    	end
    end
end
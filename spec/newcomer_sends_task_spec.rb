require 'rails_helper'

RSpec.describe "Em Envios" do
    context "tentar criar novo Envio" do
        it "e conseguir" do
            user = User.create(email: "william.shatner@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Ciência da Computação", alias: "BCC")
            newcomer = Newcomer.create(name: "William Shatner", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            task = Task.create(name: "Fotos da USP", description: "Mande fotos de vários lugares da USP!", score_type: "Cada foto validada soma 50 pontos",have_score: true, group: false, sendable: true, max_send: 50, have_feedback: true)
            nst = NewcomerSendsTask.new(newcomer_id: newcomer.id, task_id: task.id, index: 1)
            nst.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/ime.jpeg"), filename: 'ime.jpeg')
            nst.save
            expect(NewcomerSendsTask.find(nst.id).task_id).to eq(task.id)
        end

        it "e falhar pois não tem um esporte vinculado" do
            user = User.create(email: "william.shattner@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Estatística", alias: "Estat")
            newcomer = Newcomer.create(name: "William Shattner", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            qnt = NewcomerSendsTask.count
            nst = NewcomerSendsTask.new(newcomer_id: newcomer.id, task_id: nil, index: 1)
            nst.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/ime.jpeg"), filename: 'ime.jpeg')
            nst.save
            expect(NewcomerSendsTask.count).to eq(qnt)
        end

        it "e falhar pois o índice é negativo" do
            user = User.create(email: "william.shattner@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Estatística", alias: "Estat")
            newcomer = Newcomer.create(name: "William Shattner", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            task = Task.create(name: "Probleminhas", description: "Resolva os Problemas", score_type: "Cada Problema correto vale 200 pontos",have_score: false, group: false, sendable: true, max_send: 10, have_feedback: true)
            qnt = NewcomerSendsTask.count
            nst = NewcomerSendsTask.new(newcomer_id: newcomer.id, task_id: task.id, index: -1)
            nst.save
            expect(NewcomerSendsTask.count).to eq(qnt)
        end
    end

    context "tentar deletar" do
        it "um Envio e conseguir" do
            user = User.create(email: "william.shattner@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Estatística", alias: "Estat")
            newcomer = Newcomer.create(name: "William Shattner", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            task = Task.create(name: "Problemas", description: "Resolva os Problemas", score_type: "Cada Problema correto vale 200 pontos",have_score: false, group: false, sendable: true, max_send: 10, have_feedback: true)
            qnt = NewcomerSendsTask.count
            nst = NewcomerSendsTask.new(newcomer_id: newcomer.id, task_id: task.id, index: 1)
            nst.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/ime.jpeg"), filename: 'ime.jpeg')
            nst.save
            NewcomerSendsTask.destroy(nst.id)
            expect(NewcomerSendsTask.count).to eq(qnt - 1)
        end

        it "uma prova ligada a um envio e conseguir" do
            user = User.create(email: "caio.hirakawa@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Bacharelado em Matemática", alias: "Pura")
            newcomer = Newcomer.create(name: "Caio Hirakawa", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            task = Task.create(name: "Caça ao Tesouro", description: "Brincadeira feita presencialmente", score_type: "1000 pro 1o, 8000 pro 2o, 600 pro 3o, 400 pro 4o",have_score: true, group: true, sendable: false, max_send: 1, have_feedback: true)
            qnt = NewcomerSendsTask.count
            nst = NewcomerSendsTask.new(newcomer_id: newcomer.id, task_id: task.id, index: 1)
            nst.save
            Task.destroy(task.id)
            expect(NewcomerSendsTask.count).to eq(qnt - 1)
        end

        it "um bixe ligado a um envio e conseguir" do
            user = User.create(email: "victor.batistella@usp.br", password: "bixe123", admin: false)
            course = Course.create(name: "Licenciatura em Matemática", alias: "Lic")
            newcomer = Newcomer.create(name: "Victor Batistella", telephone: "987654321", course_id: course.id, team_id: nil, user_id: user.id, tutor: true, is_valid: false)
            task = Task.create(name: "Exame", description: "Fazer Exame Demartológico", score_type: "500 pontos se passar, 1000 se não",have_score: false, group: false, sendable: true, max_send: 1, have_feedback: true)
            qnt = NewcomerSendsTask.count
            nst = NewcomerSendsTask.new(newcomer_id: newcomer.id, task_id: task.id, index: 1)
            nst.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/ime.jpeg"), filename: 'ime.jpeg')
            nst.save
            Newcomer.destroy(newcomer.id)
            expect(NewcomerSendsTask.count).to eq(qnt - 1)
        end
    end
end

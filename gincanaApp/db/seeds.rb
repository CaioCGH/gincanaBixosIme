# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Seeding Courses!'
# Cursos
if Course.last == nil
    Course.create(name: "Bacharelado em Ciência da Computação")
    Course.create(name: "Bacharelado em Estatística")
    Course.create(name: "Bacharelado em Matemática")
    Course.create(name: "Licenciatura em Matemática")
    Course.create(name: "Bacharelado em Matemática Aplicada")
    Course.create(name: "Bacharelado em Matemática Aplicada e Computacional")
end

# Tasks
puts 'Seeding Task!'
if Task.last == nil
    task1 = Task.create(
        name: "Palestras",
        description: "Presença em palestras vale 50 pontos",
        score_type: "Cada Palestra 50 pontos" ,
        have_score: false ,
        group: false ,
        sendable: false,
        max_send: 10,
        have_feedback: true)
    task2 = Task.create(
        name: "Fantasia",
        description: "Virá fantasiado todos os dias",
        score_type: "Cada fantasia somar pontos" ,
        have_score: true ,
        group: false,
        sendable: false,
        max_send: 4,
        have_feedback: false)
    task3 = Task.create(name: "Fotos da USP",
        description: "Mande fotos de vários lugares da USP!",
        score_type: "Cada foto validada soma 50 pontos",have_score: true,
        group: false,
        sendable: true,
        max_send: 50,
        have_feedback: true)
end
puts 'Seeding teams!'
# Times
if Team.last == nil
    Team.create(name: "Amarelo", score: 0)
    Team.create(name: "Azul", score: 0)
    Team.create(name: "Verde", score: 0)
    Team.create(name: "Vermelho", score: 0)
end

puts 'Seeding users!'
if User.last == nil
    # Adm
    User.create(email: "adm@adm", password: "admins", admin: true)
    User.create(email: "bixe@usp.br", password: "bixe123", admin: false)
end

puts 'Seeding bixes!'
# Bixo
if Bixe.last == nil
    Bixe.create(name: "Júlio César", telephone: "987654321", course_id: 1, team_id: 1, tutor: false, is_valid: false)
    RelUserBixe.create(user_id: 2, bixe_id: 1)
end
puts 'Seeding sports!'
# Esportes
if Sport.last == nil
    Sport.create(name: "Basquete")
    Sport.create(name: "Mahjong")
    Sport.create(name: "Vôlei")
    Sport.create(name: "Ultimate")
    RelBixeSport.create(bixe_id: 1, sport_id: 1)
    RelBixeSport.create(bixe_id: 1, sport_id: 2)
    RelBixeSport.create(bixe_id: 1, sport_id: 3)
end


puts 'Seed complete!'

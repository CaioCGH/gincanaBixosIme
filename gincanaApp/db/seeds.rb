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
    Course.create(name: "Bacharelado em Ciência da Computação", nickname: "BCC")
    Course.create(name: "Bacharelado em Estatística", nickname: "Stat")
    Course.create(name: "Bacharelado em Matemática", nickname: "Pura")
    Course.create(name: "Licenciatura em Matemática", nickname: "Lic")
    Course.create(name: "Bacharelado em Matemática Aplicada", nickname: "Aplicada")
    Course.create(name: "Bacharelado em Matemática Aplicada e Computacional", nickname: "BMAC")
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
    User.create(email: "william.shatner@usp.br", password: "bixe123", admin: false)
    User.create(email: "william.shakespeare@usp.br", password: "bixe123", admin: false)
    User.create(email: "karl.marx@usp.br", password: "bixe123", admin: false)
    User.create(email: "angelina.jolie@usp.br", password: "bixe123", admin: false)
    User.create(email: "50.cent@usp.br", password: "bixe123", admin: false)
    User.create(email: "roald.dahl@usp.br", password: "bixe123", admin: false)
end

puts 'Seeding bixes!'
# Bixo
if Bixe.last == nil
    Bixe.create(name: "NoUSer", telephone: "987654321", course_id: 1, team_id: 1, tutor: true, is_valid: false)
    Bixe.destroy(1)
    Bixe.create(name: "William Shatner", telephone: "987654321", course_id: 1, team_id: 1, tutor: true, is_valid: false)
    Bixe.create(name: "William Shakespeare", telephone: "987654321", course_id: 2, team_id: 2, tutor: true, is_valid: false)
    Bixe.create(name: "Karl Marx", telephone: "987654321", course_id: 3, team_id: 3, tutor: true, is_valid: false)
    Bixe.create(name: "Angelina Jolie", telephone: "987654321", course_id: 4, team_id: 4, tutor: false, is_valid: false)
    Bixe.create(name: "50 Cent", telephone: "987654321", course_id: 5, team_id: 1, tutor: false, is_valid: false)
    Bixe.create(name: "Roald Dahl", telephone: "987654321", course_id: 6, team_id: 2, tutor: false, is_valid: false)
    RelUserBixe.create(user_id: 2, bixe_id: 2)
    RelUserBixe.create(user_id: 3, bixe_id: 3)
    RelUserBixe.create(user_id: 4, bixe_id: 4)
    RelUserBixe.create(user_id: 5, bixe_id: 5)
    RelUserBixe.create(user_id: 6, bixe_id: 6)
    RelUserBixe.create(user_id: 7, bixe_id: 7)
end
puts 'Seeding sports!'
# Esportes
if Sport.last == nil
    Sport.create(name: "Basquete")
    Sport.create(name: "Mahjong")
    Sport.create(name: "Vôlei")
    Sport.create(name: "Ultimate")
    RelBixeSport.create(bixe_id: 2, sport_id: 1)
    RelBixeSport.create(bixe_id: 2, sport_id: 2)
    RelBixeSport.create(bixe_id: 2, sport_id: 3)
end
if BixeSendsTask.last == nil
    ust = BixeSendsTask.new(bixe_id: 2, task_id: 3, index: 1)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/ime.jpeg"), filename: 'ime.jpeg')
    ust.save
    ust = BixeSendsTask.new(bixe_id: 2, task_id: 3, index: 2)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/pracaDoRelogio.jpeg"), filename: 'pracaDoRelogio.jpeg')
    ust.save
    ust = BixeSendsTask.new(bixe_id: 2, task_id: 3, index: 3)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/reitoria.jpg"), filename: 'reitoria.jpg')
    ust.save
    ust = BixeSendsTask.new(bixe_id: 2, task_id: 3, index: 4)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/io.jpg"), filename: 'io.jpg')
    ust.save
    ust = BixeSendsTask.new(bixe_id: 2, task_id: 3, index: 5)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/fau.jpeg"), filename: 'fau.jpeg')
    ust.save
    ust = BixeSendsTask.new(bixe_id: 3, task_id: 3, index: 1)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/pelletron.jpg"), filename: 'pelletron.jpg')
    ust.save
    
end




puts 'Seed complete!'

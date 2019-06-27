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
    Course.create(name: "Bacharelado em Ciência da Computação", alias: "BCC")
    Course.create(name: "Bacharelado em Estatística", alias: "Estat")
    Course.create(name: "Bacharelado em Matemática", alias: "Pura")
    Course.create(name: "Licenciatura em Matemática", alias: "Lic")
    Course.create(name: "Bacharelado em Matemática Aplicada", alias: "Aplicada")
    Course.create(name: "Bacharelado em Matemática Aplicada e Computacional", alias: "BMAC")
end

# Tasks
puts 'Seeding Task!'
if Task.last == nil
    task1 = Task.create(
        name: "Palestras",
        description: "Assistir as palestras da semana de recepção.",
        score_type: "Cada palestra assistida vale 1 ponto por bixe!" ,
        have_score: false ,
        group: false ,
        sendable: false,
        max_send: nil,
        have_feedback: true)
    task2 = Task.create(
        name: "Fantasia",
        description: "Vir e permancecer fantasiado para as atividades da semana de recepção.",
        score_type: "Cada dia que o bixo vier fantasiado, a equipe ganhará 50 pontos!" ,
        have_score: true,
        group: false,
        sendable: false,
        max_send: nil,
        have_feedback: false)
    task3 = Task.create(name: "Fotos da USP",
        description: "Mande fotos de vários lugares da USP, conforme as indicações dadas pela comissão. Não se esqueça de identificar cada foto corretamente com seu índice!",
        score_type: "Cada foto validada soma 50 pontos à equipe.",
        have_score: true,
        group: false,
        sendable: true,
        max_send: 50,
        have_feedback: true)
end
puts 'Seeding teams!'
# Times
if Team.last == nil
    Team.create(name: "Amarelo", score: 999)
    Team.create(name: "Azul", score: 696)
    Team.create(name: "Verde", score: 420)
    Team.create(name: "Vermelho", score: 1337)
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
    User.create(email: "jennifer.lopez@usp.br", password: "bixe123", admin: false)
    User.create(email: "anne.frank@usp.br", password: "bixe123", admin: false)
    User.create(email: "emma.watson@usp.br", password: "bixe123", admin: false)
    User.create(email: "james.patterson@usp.br", password: "bixe123", admin: false)
    User.create(email: "kristen.bell@usp.br", password: "bixe123", admin: false)
    User.create(email: "leonardo.da.vinci@usp.br", password: "bixe123", admin: false)
end

puts 'Seeding newcomers!'
# Bixo
if Newcomer.last == nil
    Newcomer.create(name: "NoUSer",              telephone: "987654321", course_id: 1, team_id: 1, user_id: 1, tutor: true, is_valid: false)
    Newcomer.destroy(1)
    Newcomer.create(name: "William Shatner",     telephone: "987654321", course_id: 1, team_id: 1, user_id: 2, tutor: true, is_valid: true)
    Newcomer.create(name: "William Shakespeare", telephone: "951656515", course_id: 2, team_id: 2, user_id: 3, tutor: true, is_valid: true)
    Newcomer.create(name: "Karl Marx",           telephone: "961649495", course_id: 3, team_id: 3, user_id: 4, tutor: true, is_valid: true)
    Newcomer.create(name: "Angelina Jolie",      telephone: "965115615", course_id: 4, team_id: nil, user_id: 5, tutor: false, is_valid: false)
    Newcomer.create(name: "50 Cent",             telephone: "912312312", course_id: 5, team_id: nil, user_id: 6, tutor: true, is_valid: false)
    Newcomer.create(name: "Jennifer Lopez",      telephone: "945956231", course_id: 6, team_id: nil, user_id: 7, tutor: false, is_valid: false)
    Newcomer.create(name: "Anne Frank",          telephone: "389170076", course_id: 6, team_id: nil, user_id: 8, tutor: true, is_valid: false)
    Newcomer.create(name: "Emma Watson",         telephone: "363441464", course_id: 5, team_id: nil, user_id: 9, tutor: false, is_valid: false)
    Newcomer.create(name: "James Patterson",     telephone: "534692161", course_id: 5, team_id: nil, user_id: 10, tutor: false, is_valid: false)
    Newcomer.create(name: "Kristen Bell",        telephone: "375787529", course_id: 3, team_id: nil, user_id: 11, tutor: false, is_valid: false)
    Newcomer.create(name: "Leonardo da Vinci",   telephone: "936915871", course_id: 2, team_id: nil, user_id: 12, tutor: true, is_valid: false)
end
puts 'Seeding sports!'
# Esportes
if Sport.last == nil

    modalidades = [
    "Algorítmo (bateria)",
    "Atletismo",
    "Basquete feminino",
    "Basquete masculino",
    "Beisebol/Softbol",
    "Bridge",
    "E-Sports",
    "Futebol de campo",
    "Futsal feminino",
    "Futsal masculino",
    "Handebol feminino",
    "Handebol masculino",
    "Jiu Jitsu",
    "Mahjong",
    "Natação",
    "Rugby feminino",
    "Rugby masculino",
    "Saltos Ornamentais",
    "Tênis de Campo",
    "Tênis de mesa",
    "Ultimate Frisbee",
    "Vôlei feminino",
    "Vôlei masculino",
    "Xadrez"]

    for modalidade in modalidades do
        Sport.create(name: "#{modalidade}")
    end

    modalidades = Sport.all

    for modalidade in modalidades do
        if modalidade.id%2 == 0
            SportInterestsNewcomer.create(newcomer_id: 2, sport_id: modalidade.id)
        end
        if modalidade.id%3 == 0
            SportInterestsNewcomer.create(newcomer_id: 3, sport_id: modalidade.id)
        end
        if modalidade.id%3 == 0
            SportInterestsNewcomer.create(newcomer_id: 4, sport_id: modalidade.id)
        end
    end
end
if NewcomerSendsTask.last == nil
    ust = NewcomerSendsTask.new(newcomer_id: 2, task_id: 3, index: 1)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/ime.jpeg"), filename: 'ime.jpeg')
    ust.save
    ust = NewcomerSendsTask.new(newcomer_id: 2, task_id: 3, index: 2)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/pracaDoRelogio.jpeg"), filename: 'pracaDoRelogio.jpeg')
    ust.save
    ust = NewcomerSendsTask.new(newcomer_id: 2, task_id: 3, index: 3)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/reitoria.jpg"), filename: 'reitoria.jpg')
    ust.save
    ust = NewcomerSendsTask.new(newcomer_id: 2, task_id: 3, index: 4)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/io.jpg"), filename: 'io.jpg')
    ust.save
    ust = NewcomerSendsTask.new(newcomer_id: 2, task_id: 3, index: 5)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/fau.jpeg"), filename: 'fau.jpeg')
    ust.save
    ust = NewcomerSendsTask.new(newcomer_id: 3, task_id: 3, index: 1)
    ust.photo.attach(io: File.open("#{Dir.pwd}/app/assets/images/seeds/pelletron.jpg"), filename: 'pelletron.jpg')
    ust.save

end




puts 'Seed complete!'

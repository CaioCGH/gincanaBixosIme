# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = User.new(email: "adm@adm", password: "admins", admin: true)
admin.save!

task1 = Task.new(name: "Palestras" , description: "Presença em palestras vale 50 pontos" , score_type: "Cada Palestra 50 pontos" , have_score: false , group: false , send: false, max_send: 10, have_feedback: true)
task2 = Task.new(name: "Fantasia" , description: "Virá fantasiado todos os dias" , score_type: "Cada fantasia somar pontos" , have_score: true , group: false , send: false, max_send: 4, have_feedback: false)
task1.save!
task2.save!

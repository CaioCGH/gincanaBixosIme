# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# Tasks
task1 = Task.new(name: "Palestras" , description: "Presença em palestras vale 50 pontos" , score_type: "Cada Palestra 50 pontos" , have_score: false , group: false , send: false, max_send: 10, have_feedback: true)
task2 = Task.new(name: "Fantasia" , description: "Virá fantasiado todos os dias" , score_type: "Cada fantasia somar pontos" , have_score: true , group: false , send: false, max_send: 4, have_feedback: false)
task1.save!
task2.save!

# Adm
admin = User.new(email: "adm@adm", password: "admins", admin: true)
admin.save!
badm = Bixe.new(name: "victor", telephone: "123456789", course: "BCC", tutor: true, is_valid: false)
badm.save!
#rel = RelUserBixe.new(user_id: admin.id, bixe_id: badm.id)
#rel.save!

# Times
time = Team.new(name: "Amarelo", score: 0)
time.save!
time = Team.new(name: "Azul", score: 0)
time.save!
time = Team.new(name: "Verde", score: 0)
time.save!
time = Team.new(name: "Vermelho", score: 0)
time.save!

# Bixo
bixemaster = User.new(email: "bixe@usp.br", password: "bixe123", admin: false)
bixemaster.save!
bixe = Bixe.new(name: "bixezera", telephone: "987654321", course: "Pura", tutor: false, is_valid: false)
bixe.save!
#rel2 = RelUserBixe.new(user_id: bixe.id, bixe_id: bixemaster.id)
#rel2.save!

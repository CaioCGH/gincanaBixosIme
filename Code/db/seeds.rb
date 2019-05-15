# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

perfil1 = Profile.new(profile_type: "admin")
perfil1.save!
perfil2 = Profile.new(profile_type: "bixe")
perfil2.save!

servico1 = Service.new(name: "Serviço1", description: "Este é um serviço básico, acessível para bixes")
servico1.save!
servico2 = Service.new(name: "Serviço2", description: "Este é um serviço avançado, acessível para admins")
servico2.save!
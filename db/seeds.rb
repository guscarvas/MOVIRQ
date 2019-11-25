# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Quadra.delete_all
@quadra = Quadra.new(name: "Quadra 1", ordem: 1, atual: 1, esportes: ['Vôlei','Basquete'],seg: ['POLI - BM','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 2", ordem: 2, atual: 1, esportes: ['Vôlei','Basquete'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 3", ordem: 3, atual: 1, esportes: ['Futsal','Handebol'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 4", ordem: 4, atual: 1, esportes: ['Futsal'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 5", ordem: 5, atual: 1, esportes: ['Futsal'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 6", ordem: 6, atual: 1, esportes: ['Futsal'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 7", ordem: 7, atual: 1, esportes: ['Basquete'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 8", ordem: 8, atual: 1, esportes: ['Vôlei'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 9 A", ordem: 9, atual: 1, esportes: ['Futsal','Handebol','Basquete'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 9 B", ordem: 10, atual: 1, esportes: ['Futsal','Handebol','Basquete'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 10 A", ordem: 11, atual: 1, esportes: ['Futsal','Handebol','Basquete'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Quadra 10 B", ordem: 12, atual: 1, esportes: ['Futsal','Handebol'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Velódromo A", ordem: 13, atual: 1, esportes: ['Futsal','Handebol'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Velódromo B", ordem: 14, atual: 1, esportes: ['Futsal','Handebol'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Módulo 1", ordem: 15, atual: 1, esportes: ['Vôlei','Basquete'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Módulo 2", ordem: 16, atual: 1, esportes: ['Vôlei','Basquete'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Módulo 3", ordem: 17, atual: 1, esportes: ['Vôlei','Basquete'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save
@quadra = Quadra.new(name: "Módulo 4", ordem: 18, atual: 1, esportes: ['Vôlei'],seg: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],ter: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qua: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],qui: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'],sex: ['Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago','Vago'])
@quadra.save

# @user = User.new(name: "LAAUSP", email: "laausp@usp.br", password: "123456", role: :LAAUSP)
# @user.save
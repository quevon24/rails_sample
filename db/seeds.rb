# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#   This way: Category.create(name: 'Category 1') creates duplicates if run several times
# Category.create(name: 'Category 1')
# Category.create(name: 'Category 2')
# Category.create(name: 'Category 3')
# Category.create(name: 'Category 4')
# 
#   This way: Category.where(name: 'Category 1').first_or_create if doesn't exist then creates
Role.where(name: 'admin').first_or_create
Role.where(name: 'editor').first_or_create
Category.where(name: 'Category 1').first_or_create
Category.where(name: 'Category 2').first_or_create
Category.where(name: 'Category 3').first_or_create
Category.where(name: 'Category 4').first_or_create
user = User.create(email:'admin@admin.com', password: 'qwerty123', password_confirmation: 'qwerty123')
user.add_role :admin
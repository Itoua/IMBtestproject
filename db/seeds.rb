# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  User.create(name: "Admin user", email: "admin_user@imb.co", surname: "Malcom", password: "password", password_confirmation: "password", mobile_number: "123456", admin: true)
  User.create(name: "Non admin user", email: "user@imb.co", surname: "Pablice", password: "password", password_confirmation: "password", mobile_number: "123456", admin: false)
    
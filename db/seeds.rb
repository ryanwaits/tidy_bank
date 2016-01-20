# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Task.destroy_all
Child.destroy_all
Balance.destroy_all
Parent.destroy_all

Parent.create([

  { first_name: 'Ryan', last_name: 'Waits', username: 'ryanwaits', email: Faker::Internet.email, password: Faker::Internet.password },
  { first_name: 'Jay', last_name: 'Bob', username: 'jaybob', email: Faker::Internet.email, password: Faker::Internet.password },
  { first_name: 'Hank', last_name: 'Williams', username: 'hankwilliams', email: Faker::Internet.email, password: Faker::Internet.password }

  ])
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

# Parent.create([

#   { first_name: 'Ryan', last_name: 'Waits', username: 'ryanwaits', email: Faker::Internet.email, password: Faker::Internet.password },
#   { first_name: 'Jay', last_name: 'Bob', username: 'jaybob', email: Faker::Internet.email, password: Faker::Internet.password },
#   { first_name: 'Hank', last_name: 'Williams', username: 'hankwilliams', email: Faker::Internet.email, password: Faker::Internet.password }

#   ])

# Balance.create([

#   { current_balance: 25, balance_due: 10 },
#   { current_balance: 50, balance_due: 15 },
#   { current_balance: 10, balance_due: 0 },
#   { current_balance: 5, balance_due: 25 },
#   { current_balance: 55, balance_due: 10 }

#   ])

# Child.create([

#   { first_name: 'Peggy', last_name: 'Bob', username: 'peggybob', email: Faker::Internet.email, password: Faker::Internet.password, parent_id: Parent.second.id, balance_id: Balance.first.id },
#   { first_name: 'Jessie', last_name: 'Walker', username: 'jessiewalker', email: Faker::Internet.email, password: Faker::Internet.password, parent_id: Parent.first.id, balance_id: Balance.second.id },
#   { first_name: 'Anjie', last_name: 'Johnson', username: 'anjiejohnson', email: Faker::Internet.email, password: Faker::Internet.password, parent_id: Parent.third.id, balance_id: Balance.third.id },
#   { first_name: 'Becky', last_name: 'Bob', username: 'beckybob', email: Faker::Internet.email, password: Faker::Internet.password, parent_id: Parent.second.id, balance_id: Balance.fourth.id },
#   { first_name: 'Charlie', last_name: 'Bob', username: 'charliebob', email: Faker::Internet.email, password: Faker::Internet.password, parent_id: Parent.second.id, balance_id: Balance.fifth.id }

#   ])

# Task.create([

#   { description: 'Do the laundry', child_id: Child.first.id, completed: false, price: 10.0 },
#   { description: 'Mow the lawn', child_id: Child.second.id, completed: false, price: 15.0 },
#   { description: 'Clean the living room', child_id: Child.second.id, completed: false, price: 20.0 },
#   { description: 'Wash the windows', child_id: Child.third.id, completed: false, price: 5.0 },
#   { description: 'Walk the dog', child_id: Child.fourth.id, completed: false, price: 10.0 },
#   { description: 'Take out the trash', child_id: Child.fourth.id, completed: false, price: 5.0 },
#   { description: 'Clean your room', child_id: Child.second.id, completed: false, price: 15.0 },
#   { description: 'Vacuum the house', child_id: Child.fifth.id, completed: false, price: 20.0 },
#   { description: 'Set the table', child_id: Child.third.id, completed: false, price: 5.0 }

#   ])
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

  { first_name: 'Bob', last_name: 'Smith', username: 'bobsmith', email: 'bobsmith@me.com', password: '123456', password_confirmation: '123456' },
  { first_name: 'John', last_name: 'Walker', username: 'johnwalker', email: 'johnsmith@me.com', password: '123456', password_confirmation: '123456' },
  { first_name: 'Becky', last_name: 'Jones', username: 'beckyjones', email: 'beckyjones@me.com', password: '123456', password_confirmation: '123456' }

  ])

Balance.create([

  { current_balance: 25, balance_due: 10 },
  { current_balance: 50, balance_due: 15 },
  { current_balance: 10, balance_due: 0 },
  { current_balance: 5, balance_due: 25 },
  { current_balance: 55, balance_due: 10 }

  ])

Child.create([

  { first_name: 'Ale', last_name: 'Davila', username: 'aledavila', email: 'aledavila@me.com', password: '123456', password_confirmation: '123456', parent_id: Parent.first.id, balance_id: Balance.first.id },
  { first_name: 'Peggy', last_name: 'Smith', username: 'peggysmith', email: 'peggysmith@me.com', password: '123456', password_confirmation: '123456', parent_id: Parent.first.id, balance_id: Balance.second.id },
  { first_name: 'Becky', last_name: 'Walker', username: 'beckywalker', email: 'beckywalker@me.com', password: '123456', password_confirmation: '123456', parent_id: Parent.second.id, balance_id: Balance.third.id },
  { first_name: 'Alex', last_name: 'Jones', username: 'alexjones', email: 'alexjones@me.com', password: '123456', password_confirmation: '123456', parent_id: Parent.third.id, balance_id: Balance.fourth.id },
  { first_name: 'Bob', last_name: 'Walker', username: 'bobwalker', email: 'bobwalker@me.com', password: '123456', password_confirmation: '123456', parent_id: Parent.second.id, balance_id: Balance.fifth.id }

  ])

Task.create([

  { description: 'Do laundry', completed: false, price: 5.0, due_date: DateTime.strptime("01/25/2016 15:00", "%m/%d/%Y %H:%M"), child_id: Child.first.id },
  { description: 'Make bed', completed: false, price: 15.0, due_date: DateTime.strptime("01/24/2016 14:00", "%m/%d/%Y %H:%M"), child_id: Child.second.id },
  { description: 'Do dishes', completed: false, price: 25.0, due_date: DateTime.strptime("01/27/2016 17:00", "%m/%d/%Y %H:%M"), child_id: Child.first.id },
  { description: 'Vaccum living room', completed: false, price: 15.0, due_date: DateTime.strptime("01/22/2016 18:00", "%m/%d/%Y %H:%M"), child_id: Child.second.id },
  { description: 'Wash car', completed: false, price: 10.0, due_date: DateTime.strptime("01/25/2016 13:30", "%m/%d/%Y %H:%M"), child_id: Child.third.id },
  { description: 'Clean windows', completed: false, price: 5.0, due_date: DateTime.strptime("01/25/2016 15:30", "%m/%d/%Y %H:%M"), child_id: Child.fourth.id }

  ])
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Student.create(first_name: "Jim", last_name: "Cupp")
Student.create(first_name: "Frog", last_name: "Twat")
Student.create(first_name: "Billy", last_name: "Gnat")
Student.create(first_name: "Dean", last_name: "Wanton")


SchoolClass.create(title: "Geog", room_number: 22)
SchoolClass.create(title: "Maths", room_number: 12)

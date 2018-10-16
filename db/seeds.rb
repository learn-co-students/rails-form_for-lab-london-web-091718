# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

SchoolClass.create(title: "Science Lab", room_number: 32)
SchoolClass.create(title: "English Room", room_number: 40)
SchoolClass.create(title: "Psychology Lab", room_number: 12)
SchoolClass.create(title: "Maths Room", room_number: 23)

Student.create(first_name: "Ryan", last_name: "Barker")
Student.create(first_name: "Sang", last_name: "Song")
Student.create(first_name: "Amalie", last_name: "Smidth")

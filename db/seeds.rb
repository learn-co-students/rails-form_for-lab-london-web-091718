# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Student.create(first_name: "Steve", last_name: "Cour")
Student.create(first_name: "Olly", last_name: "de Sousa")
Student.create(first_name: "John", last_name: "Arn")

SchoolClass.create(title: "Sci", room_number: 22)
SchoolClass.create(title: "Maths", room_number: 22)

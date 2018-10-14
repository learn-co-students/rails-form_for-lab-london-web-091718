# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

student1 = Student.create(first_name: "Jessica", last_name: "Alba")
student2 = Student.create(first_name: "John", last_name: "Smith")

school_class1 = SchoolClass.create(title: "Rose", room_number: 10)
school_class2 = SchoolClass.create(title: "Blue", room_number: 12)

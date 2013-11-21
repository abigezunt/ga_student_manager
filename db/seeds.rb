# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)



num_students = 20

num_students.times do
  students << User.create(first_name: Faker::Name.first_name, Faker::Name.last_name, telephone: Faker::PhoneNumber.cell_phone, address: Faker::Address.street_address, emergency_contact: Faker::Name.name, emergency_contact_phone: Faker::PhoneNumber.cell_phone)
end

num_teachers = 3

num_teachers.times do
	teachers << User.create(first_name: Faker::Name.first_name, Faker::Name.last_name, telephone: Faker::PhoneNumber.cell_phone, address: Faker::Address.street_address, emergency_contact: Faker::Name.name, emergency_contact_phone: Faker::PhoneNumber.cell_phone)
end

Course.create(name: "WDI", location: "Boston", session: 'Fall 2013', start_date: Date.today - 1.months, end_date: Date.today + 2.months)


students.each do |student|
	CourseMembership.create(user_id: student.id, role: "student", course_id: 1)
end

teachers.each do |teacher|
	CourseMembership.create(user_id: teacher.id, role: "teacher", course_id: 1)
end



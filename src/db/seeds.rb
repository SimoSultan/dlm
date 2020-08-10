# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#

require 'faker'

i = 4
j = 14
k = 19

loop do 
  break if i > 13
  new_user = User.new
  new_user.email = "s#{i}@email.com"
  new_user.password = "password"
  new_user.role = 0

  student = Student.new()
  student.user = new_user
  student.first_name = Faker::Name.unique.first_name
  student.last_name = Faker::Name.unique.last_name
  student.address = Faker::Address.unique.full_address
  student.dob = Faker::Date.unique.between(from: '1995-01-01', to:'2003-12-31')

  if i.to_s.length == 1
    student.phone = "040011100#{i}"
    student.transmission = 0
  else  
    student.phone = "04001110#{i}"
    student.transmission = 1
  end

  new_user.save
  student.save
  i += 1
end


loop do 
  break if j > 18

  new_user = User.new
  new_user.email = "t#{j}@email.com"
  new_user.password = "password"
  new_user.role = 1

  instructor = Instructor.new()
  instructor.user = new_user
  instructor.first_name = Faker::Name.unique.first_name
  instructor.last_name = Faker::Name.unique.last_name
  instructor.address = Faker::Address.unique.full_address
  instructor.dob = Faker::Date.unique.between(from: '1985-01-01', to:'1999-12-31')

  if j < 17
    instructor.phone = "040022200#{j}"
    instructor.transmission = 0
    instructor.gender = 1
    instructor.first_name = Faker::Name.unique.female_first_name
    instructor.last_name = Faker::Name.unique.last_name
  else  
    instructor.phone = "04002220#{j}"
    instructor.transmission = 1
    instructor.gender = 0
    instructor.first_name = Faker::Name.unique.male_first_name
    instructor.last_name = Faker::Name.unique.last_name
  end

  new_user.save
  instructor.save
  j += 1
end


loop do 
  break if k > 21
  
  new_user = User.new
  new_user.email = "a#{k}@email.com"
  new_user.password = "password"
  new_user.role = 2

  admin = Admin.new()
  admin.user = new_user
  admin.first_name = Faker::Name.unique.first_name
  admin.last_name = Faker::Name.unique.last_name

  new_user.save
  admin.save

  k += 1
end


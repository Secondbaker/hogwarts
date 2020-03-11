# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Appointment.destroy_all
Student.destroy_all
Teacher.destroy_all
House.destroy_all

NUMBER_OF_HOUSES = 5

NUMBER_OF_HOUSES.times do
  house_name = Faker::Movies::HarryPotter.unique.house
  house_points = rand(333..9999)
  house = House.create(name: house_name, points: house_points)

  number_of_students = rand(10..15)

  number_of_students.times do
    house.students.create(name: Faker::Movies::HarryPotter.unique.character)
  end
  number_of_teachers = rand(2..5)

  number_of_teachers.times do
    house.teachers.create(name: Faker::Movies::HarryPotter.unique.character)
  end

  teachers_with_appointments = Teacher.all.sample(10)
  teachers_with_appointments.each do |teacher|
    students = Student.all.sample(rand(2..5))
    students.each do |student|
      Appointment.create(student: student, teacher: teacher, appointment_date: Faker::Time.forward(days: 30, period: :evening))
    end
  end
end

# db/seeds.rb

# Clear existing records to avoid duplication
Student.destroy_all
SchoolClass.destroy_all

# Create school classes
math    = SchoolClass.create!(title: "Mathematics", room_number: 101)
english = SchoolClass.create!(title: "English Literature", room_number: 102)
science = SchoolClass.create!(title: "Science", room_number: 201)
history = SchoolClass.create!(title: "World History", room_number: 202)

# Create students
students = [
  { first_name: "Alice", last_name: "Johnson" },
  { first_name: "Bob", last_name: "Martinez" },
  { first_name: "Charlie", last_name: "Nguyen" },
  { first_name: "Diana", last_name: "Smith" },
  { first_name: "Ethan", last_name: "Brown" },
  { first_name: "Fiona", last_name: "Davis" }
]

students.each do |student|
  Student.create!(student)
end

puts "✅ Seeded #{SchoolClass.count} classes and #{Student.count} students."

require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store
  has_many :employees
end

class Employee 
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 60)
@store1.employees.create(first_name: "Roy", last_name: "Liu", hourly_rate: 60)
@store1.employees.create(first_name: "Joe", last_name: "Blow", hourly_rate: 60)
@store2.employees.create(first_name: "Ash", last_name: "Hello", hourly_rate: 60)
@store2.employees.create(first_name: "Road", last_name: "Hog", hourly_rate: 60)
@store2.employees.create(first_name: "Winston", last_name: "Mcgee", hourly_rate: 60)
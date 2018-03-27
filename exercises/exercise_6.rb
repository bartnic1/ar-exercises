require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
end

class Employee < ActiveRecord::Base
  belongs_to :store
end

@store1.employees.create(first_name: "Khurram", last_name: "Virani", hourly_rate: 50)
@store1.employees.create(first_name: "Rhonda", last_name: "Williams", hourly_rate: 100)
@store1.employees.create(first_name: "Mason", last_name: "Frankfurt", hourly_rate: 600)
@store2.employees.create(first_name: "Josephine", last_name: "Merkel", hourly_rate: 80)
@store2.employees.create(first_name: "Franklin", last_name: "Roosevelt", hourly_rate: 60)
@store2.employees.create(first_name: "Joejoe", last_name: "Fine", hourly_rate: 10)
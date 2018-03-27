require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'
require_relative './exercise_7'


puts "Exercise 8"
puts "----------"

# Your code goes here ...
# Modified schema in setup.rb

@wesley = @store2.employees.create(first_name: "Wesley", last_name: "Crusher", hourly_rate: 80)
puts "Auto-generated password: #{@wesley.password}"
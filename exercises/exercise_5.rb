require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'

puts "Exercise 5"
puts "----------"

# Your code goes here ...

puts Store.sum(:annual_revenue)

Store.find_each do |store|
  puts "The annual revenue for #{store.name} is: #{store.annual_revenue}"
end

@richCount = Store.where("annual_revenue > 1000000").count

puts "Number of stores making more than 1,000,000: #{@richCount}"
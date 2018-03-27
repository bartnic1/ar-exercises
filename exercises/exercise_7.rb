require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'
require_relative './exercise_6'

puts "Exercise 7"
puts "----------"

# Your code goes here ...
class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0}
  validate :carries_apparel

  private

  def carries_apparel
    if (mens_apparel == nil || mens_apparel == false)  && (womens_apparel == nil || womens_apparel == false)
      errors.add(:base, "Can't carry no apparel")
    end
  end
end

class Employee < ActiveRecord::Base
  belongs_to :store
  validates :first_name, presence:true
  validates :last_name, presence:true
  validates_inclusion_of :hourly_rate, in: 40..200
  validates :store_id, presence: true
end

puts "Please enter a store name: "
@new_store_name = gets.chomp
@new_store = Store.create(name: @new_store_name)

if @new_store.errors.any?
  @new_store.errors.each do |attribute, message|
    puts "Errors: #{attribute} #{message}"
  end
end
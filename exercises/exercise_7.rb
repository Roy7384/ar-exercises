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
class Employee
  validates :first_name, :last_name, :store_id, presence: true
  validates :hourly_rate, :inclusion => 40..200
end

class Store
  validates :name, length: {minimum: 3}, presence: true
  validates :annual_revenue, numericality: {greater_than_or_equal_to: 0, only_integer: true}
  validate :must_carry_at_least_one

  def must_carry_at_least_one
    if !(@mens_apparel || @womens_apparel)
      errors.add(:apparel, "must carry at least one")
    end
  end

end

user_store_name = gets.chomp

user_store = Store.create(name: user_store_name)

puts user_store.valid?
puts user_store.errors.messages
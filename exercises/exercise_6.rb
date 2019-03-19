require_relative '../setup'
require_relative './exercise_1'
require_relative './exercise_2'
require_relative './exercise_3'
require_relative './exercise_4'
require_relative './exercise_5'

puts "Exercise 6"
puts "----------"

# Your code goes here ...
@s1.employees.update(first_name: "Connor", last_name: "Clarkes", hourly_rate: 40000)
@s1.employees.update(first_name: "Collin", last_name: "Clarkes", hourly_rate: 15)
@s2.employees.update(first_name: "Dingus", last_name: "Clarkes", hourly_rate: 9)
@s2.employees.update(first_name: "Rollins", last_name: "Clarkes", hourly_rate: 25)
@s2.employees.update(first_name: "Gillis", last_name: "Clarkes", hourly_rate: 11)
@s1.employees.update(first_name: "Josh", last_name: "Clarkes", hourly_rate: 18)

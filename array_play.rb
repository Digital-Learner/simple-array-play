#!/usr/bin/env ruby

print "Enter a series of numbers and characters seperated with spaces: "
input = gets.chomp
data = input.split(' ')
numbers = data.select{|e| /\d+/ =~ e }
chars = data.select{|e| /\D/ =~ e }

puts "\nOutput\n======\n"

puts "Sum of all numbers: #{numbers.inject(0){|sum, e| sum + e.to_i}}"
puts "Minimum number: #{numbers.min}"
puts "Maximum number: #{numbers.max}"
puts "Concatenate the chars in array: #{chars.join}"


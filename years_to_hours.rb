#Write a program which asks the user for a number of years, and then prints out how many hours are in that many years. 
puts "Enter a number of years"
years = gets.chomp # this returns a string
years = years.to_i # this converts a string to an integer
hours = years * 365 * 24
puts "That's #{hours} hours."

#Then it asks for a number of decades, and prints out the number of minutes are in that many decades.
def years_to_days(years)
    leap_years = years/4
    leap_years * 366 + (years - leap_years) * 365 
end  

puts "Enter a number of decades"
decades = gets.chomp
decades = decades.to_i
minutes = years_to_days(decades * 10)  * 24 * 60
puts "That's #{minutes} minutes in #{decades} decades."

#Then it asks for the user's age, and prints out the number of seconds old the user is. Call this program years_to_hours.rb.
puts "Enter your age"
age = gets.chomp
age = age.to_i
seconds = years_to_days(age) * 24 * 60 * 60
puts "You're #{seconds} seconds old."

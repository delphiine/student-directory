# first, we put all the students into an array
students = [
  "Dr. Hannibal Lecter",
  "puts Darth Vader",
  "Nurse Ratched",
  "Michael Corleone",
  "Alex DeLarge",
  "The Wicked Witch of the West",
  "Terminator",
  "Freddy Krueger",
  "The Joker",
  "Joffrey Baratheon",
  "Norman Bates",
]
# and then we print them
puts "The students of Villains Academy"
puts "-------------"
students.each do |student|
  puts student
end
#finally, we print the total
puts "overall, we have  #{students.count} great students"

# first, we put all the students into an array
students = [
  {name: "Dr. Hannibal Lecter", chohort: :november},
  {name: "Darth Vader", chohort: :november},
  {name: "Nurse Ratched", chohort: :november},
  {name: "Michael Corleone", chohort: :november},
  {name: "Alex DeLarge", chohort: :november},
  {name: "The Wicked Witch of the West", chohort: :november},
  {name: "Terminator", chohort: :november},
  {name: "Freddy Krueger", chohort: :november},
  {name: "The Joker", chohort: :november},
  {name: "Joffrey Baratheon", chohort: :november},
  {name: "Norman Bates", chohort: :november},
]

# and then we print them
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}} (#{student[:chohort]} cohort)"
  end
end

#here we print the total
def print_footer(students)
  puts "overall, we have  #{students.count} great students"
end

#finally, call the methods
print_header
print(students)
print_footer(students)

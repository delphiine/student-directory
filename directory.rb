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
def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(names)
  names.each do |name|
    puts name
  end
end

#here we print the total
def print_footer(names)
  puts "overall, we have  #{names.count} great students"
end

#finally, call the methods
print_header
print(students)
print_footer(students)

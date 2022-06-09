def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  
  students = []
  name = gets.chomp
  
  until name.empty? do 
    
    puts "Whats #{name}'s hobby?"
    hobby = gets.chomp
    puts "wWats your cohort?"
    cohort = gets.chomp.to_sym 
    students << {name: name, hobby: hobby, cohort: cohort}

    if students.length != 1
      puts "Now we have #{students.count} students - add a name or hit enter to exit."
    else
      puts "Now we have 1 student - add a name or hit enter to exit."
    end

    name = gets.chomp
  end
  students
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print(students)
  students.each do |student|
    puts "#{student[:name]}'s hobby is #{student[:hobby]} (#{student[:cohort]} cohort)"
  end
end

def print_footer(students)
  puts "overall, we have  #{students.count} great students"
end

def interactive_menu
  students = []
  loop do
  # 1. print the menu and ask the user what to do
  puts "1. Input the students"
  puts "2. Show the students"
  puts "9. Exit" # 9 because we'll be adding more items
  # 2. read the input and save it into a variable
  selection = gets.chomp
  # 3. do what the user has asked
  case selection
    when "1"
      students = input_students
    when "2"
      print_header
      print(students)
      print_footer(students)
    when "9"
      exit # this will cause the program to terminate
    else
      puts "I don't know what meant, try again"
    end
  end
end

interactive_menu
students = input_students
print_header
print(students)
print_footer(students)
@students = []

def input_students
  puts "Please enter the names of the students"
  puts "To finish, just hit return twice"
  name = gets.chomp

  until name.empty? do 
    
    puts "Whats #{name}'s hobby?"
    hobby = gets.chomp
    puts "wWats your cohort?"
    cohort = gets.chomp.to_sym 
    @students << {name: name, hobby: hobby, cohort: cohort}

    if @students.length != 1
      puts "Now we have #{@students.count} students - add a name or hit enter to exit."
    else
      puts "Now we have 1 student - add a name or hit enter to exit."
    end

    name = gets.chomp
  end
end

def save_students
  # open a file for writing
  file = File.open("students.csv", "w")
  # iterate over the array of students
  @students.each do |student|
    student_data = [student[:name], student[:cohort]]
    csv_line = student_data.join(",")
    file.puts csv_line
  end
  file.close
end

def interactive_menu
  loop do
    print_menu
    process(gets.chomp)
  end
end

def print_menu
  puts "1. Input the students"
  puts "2. Show the students"
  puts "3. Save the list to students.csv"
  puts "9. Exit" 
end

def show_students
  print_header
  print_student_list
  print_footer
end

def process(selection)
  case selection
  when "1"
    input_students
  when "2"
    show_students
  when "3"
    save_students
  when "9"
    exit 
  else
    puts "I don't know what you meant, try again"
  end
end

def print_header
  puts "The students of Villains Academy"
  puts "-------------"
end

def print_student_list
  @students.each do |student|
    puts "#{student[:name]}'s hobby is #{student[:hobby]} (#{student[:cohort]} cohort)"
  end
end

def print_footer
  puts "Overall, we have #{@students.count} great students"
end

interactive_menu
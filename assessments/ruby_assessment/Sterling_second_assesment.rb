###Student Ruby Assessment
# Instructions

# Create a file with "<yourName>_assessment.rb".
# Sections 1-6

# Title each section with a comment that includes the name and number of each section.
# Then write the ruby that fulfills each lettered instruction under the title. There is no need to structure your code based on the lettered instructions.
# If you need to use code from a previous numbered section please cut and paste into the approrpriate section.
# tl;dr: Your deliverable should be structured based on the numbered sections, not the lettered sections.

# Section 7

# Please use the letters and answer each lettered question individually.
# EXAMPLE:

# NB. this is in javascript so if you copy it, you will not be correct.

#  //AshleyWilliams_assessment.js
#  //1. Arrays
#  var my_array = ["Blake","Ashley","Jeff"];
#  my_array.push("Avi");
#  for(var i=0; i<my_array.length; i++){
#   console.log(my_array[i]);   
#  }
#  console.log(my_array[1]);
#  var index = my_array.indexOf("Jeff");

#  //2. Hashes
#  instructor = {"name": "Ashley", "age": 27};
#  for(i in instructor){
#   console.log(i + ": " + instructor[i]);
#  }
#  //.... etc etc

#  //...
#  //7. Self
#  // a. Arrararrr Syntax error cuz i'm taking this is JS and not ruby
#  //.... etc etc
# Questions

# Questions should be answered with the simplest, most barebone solution possible.

# 1. Arrays

array = ["Blake","Ashley","Jeff"]

# a. Add a element to an array
array << "Ari"

# b. Write a statement to print out all the elements of the array. This should not be just puts my_hash but should iterate over the structure printing each value.
array.each do |item|
    puts item
end

puts array.join(", ")

# c. Return the value at index 1.
array[1]

# d. Return the index for the value "Jeff".
array.each_with_index do |item, index|
   index if item == "Jeff"
end

# 2. Hashes

instructor = {:name=>"Ashley", :age=>27}

# a. Add a new key for location and give it the value "NYC".
instructor[:location] = "NYC"

# b. Write a statement to print out all the key/value pairs in the hash. This should not be just puts my_hash but should iterate over the structure printing each individual key and value.
instructor.each do |quality, value|
    puts "#{quality.to_s.capitalize} is #{value}."
end

# c. Return the name value from the hash.
instructor[:name]

# d. Return the key name for the value 27.
instructor.key(27)

# 3. Nested Structures

school = { 
  :name => "Happy Funtime School",
  :location => "NYC",
  :instructors => [ 
    {:name=>"Blake", :subject=>"being awesome" },
    {:name=>"Ashley", :subject=>"being better than blake"},
    {:name=>"Jeff", :subject=>"karaoke"}
  ],
  :students => [ 
    {:name => "Marissa", :grade => "B"},
    {:name=>"Billy", :grade => "F"},
    {:name => "Frank", :grade => "A"},
    {:name => "Sophie", :grade => "C"}
  ]
}
# a. Add a key to the school hash called "founded_in" and set it to the value 2013.
school[:founded_in] = 2013

# b. Add a student to the school's students' array.
school[:students] << { :name => "Sterling", :grade => "A+!"}

# c. Remove "Billy" from the students' array. Create a solution that would work for any name given, then give it the name "Billy".
school[:students].delete_if {|person| person[:name] == "Billy"}

# d. Add a key to every student in the students array called "semester" and assign it the value "Summer".
school[:students].each { |person| person[:semester] = "Summer"}

# e. Change Ashley's subject to "being almost better than Blake". Create a solution that would work for any teacher given, then give it the teacher "Ashley".
school[:instructors].each { |person| person[:subject] = "being almost better than Blake" if person[:name] == "Ashley"}

# f. Change Frank's grade from "A" to "F". Create a solution that would work for any intial and replacement grade given, then give it the grades and "A" and "F".
school[:students].each { |person| person[:grade] = "F" if person[:name] == "Frank"}

# g. Return the name of the student with a "B". Create a solution that would work for any grade given, then give it the grade "B".

school[:students].each { |person| puts person[:name] if person[:grade] == "B"}

# h. Return the subject of the instructor "Jeff". Create a solution that would work for any instructor given, then give it the instructor "Jeff" and the new subject.
school[:instructors].each { |person| puts person[:subject] if person[:name] == "Jeff"}

# i. Write a statement to print out all the values in the school. This should not be just puts my_hash but should iterate over the structure printing each individual key and value.
school.each_pair do |key, value|
    if key == :instructors
        value.each do |person|
            puts "#{person[:name]} teaches #{person[:subject]}."
        end
    elsif key == :students
        value.each do |person|
            puts "#{person[:name]} is getting a #{person[:grade]} for the #{person[:semester]} semester."
        end
    else
    puts "the #{key} is #{value}."
    end
end

# 4. Methods

# Note: You will need to pass the school variable to each of these methods to include it in scope.

# a.
# i. Create a method to return the grade of a student, given that student's name. ii. Then use it to refactor your work in 3.i., i.e. use your method to replace some of the iteration that was initiailly required.
def return_student_grade(school, name)
    school[:students].each do |person|
        return person[:grade] if person[:name] == name
    end
end

#### due to the way I worte this to start this method does not confer an advantage
school.each_pair do |key, value|
    if key == :instructors
        value.each do |person|
            puts "#{person[:name]} teaches #{person[:subject]}."
        end
    elsif key == :students
        value.each do |person|
            puts "#{person[:name]} is getting a #{return_student_grade(school, person[:name])} for the #{person[:semester]} semester."
        end
    else
    puts "the #{key} is #{value}."
    end
end


# b. i.Create a method to udpate a instructor's subject given the instructor and the new subject. ii. Then use it to update Blake's subject to "being terrible".
def update_subject (school, name, new_subject)
    school[:instructors].each do |person|
        person[:subject] = new_subject if person[:name] == name
    end
end

update_subject(school, "Blake", "being terrible")

# c. i. Create a method to add a new student to the schools student array. ii. Then use it to add yourself to the school students array.
def add_a_student (school, name, grade, semester)
    school[:students] << { :name => name, :grade => grade, :semester => semester}
end
add_a_student(school, "Sterling", "Pending", "Fall")

# d. i. Create a method that adds a new key at the top level of the school hash, given a key and a value. ii. Then use it to add a "Ranking" key with the value 1.
def add_to_school(school, key, value)
    school[key] = value
end

add_to_school(school, :ranking, "The best")

# 5. Object Orientation

# a. Create a bare bones class definition for a School class.
class School

end

# b. Define an initialize method for the School class.
def initialize(name)
    @name = name
end

# i. Give your School class the instance variables: name, location, ranking, students, instructors. NOTE: These variables should be of the same type as they are in the hash above.
class School
@name
@location
@ranking
@students = []
@instructors =[]

end

# ii. Rewrite your initialize method definition to take a parameter for each instance variable.
def initialize(name, location, ranking, students, instructors)
    @name = name

end

# iii. Initialize each instance variable with the value of the corresponding parameter.
def initialize(name, location, ranking, students, instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
end

# c. Create an attr_accessor for name, location, instructors, and students. Create an attr_reader for ranking.
class School
    attr_accessor :name, :location, :instructors, :students
    attr_reader :ranking

end

# # d. Create a method to set ranking, given a ranking value.
def set_ranking(new_ranking)
    @ranking = new_ranking

end

# # e. Create a method to add a student to the school, given a name, a grade, and a semester.
def add_student(name, grade, semester)
    redundancy = false
    :students.each do |student|
        redundancy = true if student[:name] == name && student[:semester]
    end
    if redundancy = true
        puts "#{name} is already enrolled for the #{semester} semester."
    else
    :students << { :name => name, :grade => grade, :semester => semester}
    end
end

# # f. Create a method to remove a student from the school, given a name.
def remove_student(name)
    enrolled = false
    :students.each do |student|
        enrolled = true if student[:name] == name
    end
    if redundancy = true
        school[:students].delete_if {|student| student[:name] == name}
    else
        puts "#{name} is not enrolled in this school."
    end
end

# # g. Create an array constant SCHOOLS that stores all instances of your School class.
#=> We never did discuss constants, but I took a stab at it in file Classes_and_stuff.rb


# # h. Create a class method reset that will empty the SCHOOLS constant.
def reboot_schools
    SCHOOLS = []
end

# # 6. Classes

# # a. Create a Student class.
class Student
    attr_accessor :grade, :semester
    attr_reader :name

    def initialize(name, grade, semester)
        @name = name
        @grade = grade
        @semester = semester
    end

end

# b. Refactor your School instance methods to treat Students as an array of objects instead of an array of hashes.
#=> See implementation in file Classes_and_stuff.rb

# c. Create a method in the School class that finds a student by name and returns the correct Student object.

# 7. Self

# For this section, please use the letters and answer each individually.

# Note: in cases where self is an instance of an object just note that as the object id printed to the screen is going to be different everytime

# a.What should this Class print to the screen when defined/loaded?

  # class Student

  #   def self.say_hello
  #     puts "hello"
  #   end

  #   say_hello
  #   puts self

  # end
  #=> "hello" Student

# b. What should this Class print to the screen when defined/loaded?

  # class Student

  #   def self.say_hello
  #     puts self
  #   end

  #   say_hello

  # end

   #=> Student

# c. What should this Class print to the screen when defined/loaded?

  # class Student

  #   def initialize
  #     puts self
  #   end

  #   new

  # end

  #=> object id
# d. What should this code print to the screen when run?

#   class Student

#     def say_hello
#       puts self
#     end

#   end
# Student.new.say_hello
#=> object id

# e. What should this code print to the screen when run?

#   class Student

#     def say_hello
#       puts say_goodbye
#     end

#     def say_goodbye
#       "goodbye"
#     end

#   end
# Student.new.say_hello
#=> "goodbye"
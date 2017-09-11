# Sterling's Ruby Assesment

#1.Arrays
  # `array = ["Blake","Ashley","Jeff"]`
  # a. Add a element to an array
  # b. Write a statement to print out all the elements of the array.
  # c. Return the value at index 1.
  # d. Return the index for the value "Jeff".

names = []
names << "Blake"
names << "Ashely"
names << "Jeff"
names.each {|x| print "Your name is #{x}, "}
print "\n"
puts names[1]

index = 0
names.each do |element|
  if element == "Jeff"
    puts "Jeff is at index #{index}"
  else
    index += 1
  end
end

#2. Hashes

instructor = {:name=>"Ashley", :age => 27}

#   a. Add a new key for location and give it the value "NYC".
#   b. Write a statement to print out all the key/value pairs in the hash
#   c. Return the name value from the hash.
#   d. Return the key name for the value 27.

instructor[:location] = "NYC"

instructor.each do |key, value|
  puts "#{key} #{value}"
end

puts instructor[:name]
puts "The key name for the value 27 is #{instructor.key(27)}."

#3. Nested Structures

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

#   a. Add a key to the school hash called "founded_in" and set it to the value 2013. 
#   b. Add a student to the school's students' array.
#   c. Remove "Billy" from the students' array. <= this questions seems to imply searching for "Billy".
#   d. Add a key to every student in the students array called "semester" and assign it the value "Summer".
#   e. Change Ashley's subject to "being almost better than Blake"
#   f. Change Frank's grade from "A" to "F".
#   g. Return the name of the student with a "B". <= this questions seems to imply searching for the "B" grade
#   h. Return the subject of the instructor "Jeff".<= also implies searching
#   i. Write a statement to print out all the values in the school. ***FLAG

school[:founded_in] = 2013
school[:students]<< {:name => "Sterling", :grade => "A+"}
school[:students].delete_at(1)
#puts school[:students]

school[:students].each do |student|
   student[:semester] = "Summer"
 end
school[:instructors].at(1)[:subject] ="being almost better than Blake"
school[:students].at(1)[:grade] ="F"
#puts school

puts school[:students][0][:name]
puts school[:instructors][2][:subject]

puts "#{school[:name]} has been based in #{school[:location]} since #{school[:founded_in]}"
school[:instructors].each { |entry| puts "#{entry[:name]} has been hired for #{entry[:subject]}"}
school[:students].each { |entry| puts "#{entry[:name]} is getting a #{entry[:grade]}"}


###4. Methods

# Note: You will need to pass the school variable to each of these methods to include it in scope.
# school = { 
#   :name => "Happy Funtime School",
#   :location => "NYC",
#   :instructors => [ 
#     {:name=>"Blake", :subject=>"being awesome" },
#     {:name=>"Ashley", :subject=>"being better than blake"},
#     {:name=>"Jeff", :subject=>"karaoke"}
#   ],
#   :students => [ 
#     {:name => "Marissa", :grade => "B"},
#     {:name=>"Billy", :grade => "F"},
#     {:name => "Frank", :grade => "A"},
#     {:name => "Sophie", :grade => "C"}
#   ]
# }
  # a.  
  #  i. Create a method to return the grade of a student, given that student's name.
  #  ii. Then use it to refactor your work in 3.i.

def grade_return(school, name)
school[:students].each do |record|
    puts record[:grade] if record[:name] == name
  end
end

grade_return(school, "Frank")

  # b. 
  #  i.Create a method to udpate a instructor's subject given the instructor and the new subject.
  #  ii. Then use it to update Blake's subject to "being terrible".

def grade_change(school, instructor, new_subject)
  school[:instructors].each do |record|
    record[:subject] = new_subject if record[:name] == instructor
  end
end

grade_change(school, "Blake", "being terrible")
# puts school[:instructors][0]

  # c. 
  #  i. Create a method to add a new student to the schools student array.
  #  ii. Then use it to add yourself to the school students array.

def add_student(school, new_entry)
  duplicate = false
   school[:students].each do |existing|
     duplicate = true if existing[:name] ==  new_entry[:name] && existing[:semester] ==  new_entry[:semester]
  end
  if duplicate == true
    puts "This is a redundant entry."
  else
    school[:students] << new_entry
    puts "New entry for #{new_entry[:name]} created."
  end
end

#add_student(school, {:name => "Sterling", :grade => "A+", :semester => "Summer"} )
add_student(school, {:name => "Sterling", :grade => "A+", :semester => "Fall"} )

  # d. 
  #  i. Create a method that adds a new key at the top level of the school hash, given a key and a value. 
  #  ii. Then use it to add a "ranking" key with the value 1.

  def add_hash(school, key, value)
    school[:key] = value
    puts "School #{key} updated to #{school[:key]}."
  end

add_hash(school, "ranking", 1)

###5. Object Orientation

  # a. Create a bare bones class definition for a School class.
  # b. Define an initialize method for the School class.
 #  i. Give your School class the instance variables: name, location, ranking, students, instructors.
  #  NOTE: These variables should be of the same type as they are in the hash above.
  #  ii. Rewrite your initialize method definition to take a parameter for each instance variable. 
  #  iii. Initialize each instance variable with the value of the corresponding parameter.
  # c. Create an attr_accessor for name, location, instructors, and students. Create an attr_reader for ranking.
  # d. Create a method to set ranking, given a ranking value.
 # e. Create a method to add a student to the school, given a name, a grade, and a semester.
 # f. Create a method to remove a student from the school, given a name.
  # g. Create an array constant SCHOOLS that stores all instances of your School class.
  # h. Create a class method `reset` that will empty the SCHOOLS constant.


class School
  attr_accessor :name, :location, :instructors, :students
  attr_reader :ranking
  @@SCHOOLS = []

  def reset
    @@SCHOOLS = []
  end

  def initialize(name, location, ranking, students, instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students =  students
    @instructors = instructors
   @@SCHOOLS << self
  end

  def set_ranking( new_rank)
      @ranking = new_rank
  end

  def add_a_student( name, grade, semester)
      present = false
     @students.each do |record|
      present = true if record[:name] == name && record[:semester] == semester
  end
      if present == true
        puts "A record for #{name} already exists."
      else
        new_student = {}
        new_student[:name] = name
        new_student[:grade] = grade
        new_student[:semester] = semester
        students << new_student
        puts "#{name} has been added to the database."
      end
  end

  def remove_student (name)
     present = false
     location = 0
    @students.each do |record|
      if record[:name] == name
        present = true
        break
      else
        location += 1
      end
    end
      if present == true
        puts "The record for #{students[location][:name]} has been removed."
        students.delete_at(location)        
      else
        puts "There is no record for a student named \"#{name}.\""
      end
   end

 end

fis = School.new("Flat", "NYC", 1,  [{:name => "Marissa", :grade => "B", :semester =>"Fall"}] , "folks")
#puts fis.ranking
fis.set_ranking("the best")
puts "The school's ranking is #{fis.ranking}"
fis.add_a_student("Sterling", "A+!", "Fall")
fis.add_a_student("Marissa", "A+!", "Fall")
#puts fis.students
fis.remove_student("Rosemary")
fis.remove_student("Marissa")
#puts fis.students


###6. Classes

  # a. Create a Student class.

  # b. Refactor your School instance methods to treat Students as an array of objects instead of an array of hashes.

  # c. Create a method in the School class that finds a student by name and returns the correct Student object. 

class Student

  attr_accessor :semester
  attr_reader :name, :grade

  def initialize (name, grade, semester)
  @name = name
  @grade = grade
  @semester = semester
  end
end

class School
  attr_accessor :name, :location, :instructors, :students
  attr_reader :ranking
  @@SCHOOLS = []

def reset
@@SCHOOLS = []
end

  def initialize(name, location, ranking, students, instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students =  students
    @instructors = instructors
   @@SCHOOLS << self
  end

  def set_ranking( new_rank)
      @ranking = new_rank
  end


    def add_a_student(name, grade, semester)
      present = false
     @students.each do |record|
      present = true if record.name == name && record.semester == semester
  end
      if present == true
        puts "A record for #{name} already exists."
      else
        new_student = Student.new(name, grade, semester)
        students << new_student
        puts "#{name} has been added to the database."
      end
  end

   def remove_student (name)
     present = false
     location = 0
    @students.each do |record|
      if record.name == name
        present = true
        break
      else
        location += 1
      end
    end
      if present == true
        puts "The record for #{students[location].name} has been removed."
        students.delete_at(location)        
      else
        puts "There is no record for a student named \"#{name}.\""
      end
 end

 def find_student (name)
  present = false
     location = 0
    @students.each do |record|
      if record.name == name
        present = true
        break
      else
        location += 1
      end
    end
      if present == true
        puts "#{students[location].name} is getting a #{students[location].grade} for the #{students[location].semester} semester."    
      else
        puts "There is no record for a student named \"#{name}.\""
      end
 end

end

student1 = Student.new("Marissa", "B", "Fall")
fis = School.new("Flat", "NYC", 1,  [student1] , "folks")
fis.find_student("Marissa")
fis.find_student("Matthew")


# ###7

# # a.
# # "hello"
# # Student

# # b.
# # Student

# # c.
# # object ID

# # d.
# # object ID

# # e.
# # "goodbye"
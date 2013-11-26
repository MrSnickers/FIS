### CLASSES FOR ASSESMENT
class School
    attr_accessor :name, :location, :instructors, :students
    attr_reader :ranking

SCHOOLS = []


def initialize(name, location, ranking, students, instructors)
    @name = name
    @location = location
    @ranking = ranking
    @students = students
    @instructors = instructors
    ##storage of school instances in SCHOOL goes here somewhere
end

def reboot_schools
    SCHOOLS = []
end

def set_ranking(new_ranking)
    @ranking = new_ranking
end

def locate_student(name)
  students.each_with_index do |individual, index|
    if individual.name == name
      return student[index]
    else
      puts "#{name} is not a currently enrolled student."
    end
end

def add_student(name, grade, semester)
    redundancy = false
    :students.each do |student|
        redundancy = true if student.name == name && student.semester
    end
    if redundancy = true
        puts "#{name} is already enrolled for the #{semester} semester."
    else
    :students << Student.new(name, grade, semester)
    end
end

def remove_student(name)
    enrolled = false
    :students.each do |student|
        enrolled = true if student.name == name
    end
    if redundancy = true
        school[:students].delete_if {|person| person[:name] == name}
    else
        puts "#{name} is not enrolled in this school."
    end
end

end

class Student
    attr_accessor :grade, :semester
    attr_reader :name

    def initialize(name, grade, semester)
        @name = name
        @grade = grade
        @semester = semester
    end

end
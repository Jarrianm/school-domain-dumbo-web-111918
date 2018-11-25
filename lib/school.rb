require 'pry'
class School
attr_accessor :school, :student, :roster
def initialize(school)
  @school = school
  @roster = Hash.new{|roster,grade| roster[grade] = []}
  # creates an empty array for the key within the @roster hash
end

def add_student(student,grade)
@roster[grade] << student
end

def grade(grade)
@roster[grade]
end

def sort
@roster.each_value {|grade| grade.sort!}
end
end

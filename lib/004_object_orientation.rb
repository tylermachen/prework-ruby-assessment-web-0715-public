class School
  @@count = 0

  attr_accessor :students, :instructors
  attr_reader :name, :location, :ranking

  def initialize(name, location, ranking)
    @name = name
    @location = location
    @ranking = ranking
    @students = []
    @instructors = []
    @@count += 1
  end

  # class methods

  def self.count
    @@count
  end

  def self.all
    ObjectSpace.each_object(self)
  end

  def self.reset_all
    @@count = 0
  end

  # instance methods

  def add_student(name, grade, semester)
    @students << { name: name, grade: grade, semester: semester }
  end

  def remove_student(name)
    @students.delete(name)
  end
end

school = School.new("Flatiron School", "NYC", 5)
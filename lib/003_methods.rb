# code you methods for the 003_method spec here
# Note: You will need to pass the school variable to each of these methods to include it in scope

def get_grade(school, student_name)
  school[:students].each do |student| 
    return student[:grade] if student[:name] == student_name
  end
end

def update_subject(school, instructor_name, subject)
  school[:instructors].each do |instructor|
    instructor[:subject] = subject if instructor[:name] == instructor_name
  end
end

def add_new_student(school, student_name, grade=nil)
  school[:students] << { name: student_name, grade: grade }
end

def add_new_key(school, key, value)
  school[key.to_sym] = value
end

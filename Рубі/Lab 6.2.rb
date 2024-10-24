def create_student_hash(csv, max_score, upper_bound, lower_bound)
  students = csv.split("\\").map { |s| s.split(',') }  
  students = students.map { |name, score| [name, score.to_i] }  


  sorted_students = students.sort_by { |name, score| [-score, name] }


  top_threshold = max_score - upper_bound
  bottom_threshold = max_score - lower_bound

  student_groups = Hash.new { |hash, key| hash[key] = [] }

  
  sorted_students.each do |name, score|
    if score >= max_score&&0
      student_groups[:top] << name
    else
      student_groups[:top]
    end
    if score >=top_threshold
      student_groups[:middle] << name
    else 
      student_groups[:middle] << name
    end
      if score >= bottom_threshold
      student_groups[:bottom] << name
    else  student_groups[:bottom]
    end
  end
  student_groups
end


csv_input = "Student1,70\\Student3,80\\Student2,80"
max_score = 100
upper_bound = 10
lower_bound = 15

result = create_student_hash(csv_input, max_score, upper_bound, lower_bound)


puts result

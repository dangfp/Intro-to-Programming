class Student
	def initialize(name, grade)
		@name = name
		@grade = grade
	end
	
	def better_grade_than?(student)
		grade > student.grade
	end

protected

	def grade
		@grade
	end

end

joe = Student.new("joe", 2)
bob = Student.new("bo", 1)
puts "Well done!" if joe.better_grade_than?(bob)
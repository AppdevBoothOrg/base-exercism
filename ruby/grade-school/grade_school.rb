=begin
Write your code for the 'Grade School' exercise in this file. Make the tests in
`grade_school_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/grade-school` directory.
=end

class School
    def initialize
        @the_school = Array.new
        
    end
    
    def students_by_grade
       return @the_school
    end

    def add(the_student, the_grade)
        success = false
        
        @the_school.each do |a_school|
            if a_school.fetch(:grade) == the_grade

                array_to_sort = []
                array_to_sort = a_school.fetch(:students).push(the_student)
                array_to_sort = array_to_sort.sort
                a_school.store(:students, array_to_sort)
                success = true
            end

        end  

        if success == false
            temporary_array = []
            adding_new_student_grade = Hash.new
            adding_new_student_grade.store(:grade, the_grade)
            adding_new_student_grade.store(:students, temporary_array.push(the_student))
            @the_school.push(adding_new_student_grade)
        end

        @the_school = @the_school.sort_by { |p| p[:grade] }

    end

    def students(the_grade)
        student_list = []
        
        if @the_school.count>0
            @the_school.each do |a_hash|
                if a_hash.fetch(:grade) == the_grade
                    student_list = student_list + a_hash.fetch(:students)
                end
            end
        end
        
       return student_list.sort
    end

end

#school = School.new
#school.add('Aimee', 2)
#p school.students(2)


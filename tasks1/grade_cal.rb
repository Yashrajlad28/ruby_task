class Subject

    attr_accessor :name, :marks
    @@max_attainable_marks_per_subject = 100 # Use constants instead of class variables
    @@total_subjects = 0

    def initialize(name, marks)
        @name = name
        @marks = marks
        @@total_subjects += 1
    end

    def self.max_attainable_marks_per_subject
        # see the error when you forget @@ 
        # max_attainable_marks_per_subject
        @@max_attainable_marks_per_subject
    end

    def self.total_subjects
        @@total_subjects
    end

end

class Grade
    def initialize(course)
        @course = course # course will contain subjects
        @total = 0
        @percentage = 0

    end

    def determine_grade
        for s in @course do
            @total += s.marks
        end
        @percentage = @total.to_f / Subject.total_subjects
        puts "You have scored #{@percentage}% marks!"
    end
end

s1 = Subject.new("Maths", 95)
s2 = Subject.new("Science", 86)
s3 = Subject.new("SST", 95)
s4 = Subject.new("Sanskrit", 99)
s5 = Subject.new("English", 84)

tenth_subjects = [s1, s2, s3, s4, s5]
tenth_grade = Grade.new(tenth_subjects)
tenth_grade.determine_grade
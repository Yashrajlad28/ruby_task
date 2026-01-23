puts "Module 6"

fruits = ["Apple", "Banana", "Cherry", "Dragonfruit", "Grapes", "Orange"]

hsh = Hash.new
hsh["Apple"] = 23
hsh["Banana"] = 22
hsh["Cherry"] = 19
hsh["Dragonfruit"] = 17
hsh["Grapes"] = 62
hsh["Orange"] = 37

hsh.each do |key, val| 
    puts "#{key} : #{val}"
end

puts hsh[19].nil?
puts hsh["Apple"]

puts "----------------------------------------------------"
puts

puts "Module 7"
class Car
    @@wheels = 4
    def initialize(company, name, color)
        @company = company
        @name = name
        @color = color
        @ignition = nil
    end

    def self.number_of_wheels
        @@wheels
    end

    def start
        @ignition = "start"
        puts "#{@company} #{@name} is running"
    end

    def stop
        if @ignition.nil?
            puts "First start the car to stop it"
            return
        end
        @ignition = "stop"
        puts "#{@company} #{@name} has stopped"
    end
end

car1 = Car.new("Toyota", "Fortuner", "white")
puts "Every car has #{Car.number_of_wheels} wheels."
car1.start
car1.stop
car2 = Car.new("Hyundai", "Palisade", "black")
car2.stop

class Animal
    def initialize
        puts "Animal class constructor"
    end

    def eat
        puts "Animal is now eating"
    end

    def sleep
        puts "Animal is sleeping"
    end

end

class Dog < Animal
    def initialize
        puts "Dog class constructor"
    end

    def make_sound
        puts "Dog is barking"
    end
end

obj_d = Dog.new

obj_d.eat
obj_d.make_sound
# obj_a.make_sound
puts "----------------------------------------------------"
puts

puts "Module 8"

module Biology

    BIO_CHAPTERS = 5

    def extract_samples
        puts "Extracting samples"
    end

    def examine_samples
        puts "Examining extracted samples under a microscope"
    end

end

module Chemistry

    CHEM_CHAPTERS = 5

    def perform_experiments
        puts "Performing experiments in chemistry lab"
    end

end

module Physics
    CHEM_CHAPTERS = 6

    def understand_derivations
        puts "Write and thoroughly understand derivations"
    end

    def solve_numericals
        puts "Solving numericals in physics"
    end
end

class Science
    include Biology
    include Chemistry
    include Physics

    def initialize
        puts "Constructor of SCience class"
    end

    def study
        puts "To study Science you need to learn Physics, Chemistry and Biology"
    end
end

sbj = Science.new
puts sbj.extract_samples


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

puts "----------------------------------------------------"
puts


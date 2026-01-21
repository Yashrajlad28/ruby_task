puts "Module 1"
puts "Hello Ruby!"

puts "----------------------------------------------------"
puts

puts "Module 2"
name = "Yashraj"
age = 22
programming_interest = "high"

puts "My name is #{name}. I am #{age} years old."
puts "I have #{programming_interest} interest in programming."

puts "----------------------------------------------------"
puts

puts "Module 3"
print "Enter your name: "
# Introduces the \n character 
nm = gets
puts "Hello #{nm}!"

puts

print "Enter your age: "
a = gets.chomp.to_i

puts "Your are #{a} years old."

puts "Calculate perimeter of rectangle"

print "Enter length: "
length = gets.chomp.to_f
print "Enter breadth: "
breadth = gets.chomp.to_f

area = length * breadth

puts "Area is #{area} sq.units"

num = 12

if num >= 10 && num <= 20
    puts "#{num} lies in 10 - 20"
else
    puts "#{num} does not lie in 10 - 20"
end

document = "Aadhar"

if document == "Aadhar" || document == "Pan"
    puts "Valid"
else
    puts "Invalid"
end


puts "----------------------------------------------------"
puts

puts "Module 4"

counter = 1
for i in 1..5 do
    for j in 1..10 do
        if counter < 10
            print "#{counter}  "
        else
            print "#{counter} "
        end
        
        counter += 1
    end
    puts
end

puts 

num = 1
sum = 0
while num < 101 do
    sum += num
    num += 1
end

puts "Sum of 1 - 100 numbers is: #{sum}"


puts "----------------------------------------------------"
puts

puts "Module 5"

def greet(name)
    puts "Hello #{name}! How are you?"
end

nme = "Steve"
greet(nme)

num = 6
def square(num)
    num*num
end

puts "Square of #{num} is #{square(6)}"

def is_even(num)
    if num & 1 == 1 
        return false
    else 
        return true
    end
end

puts is_even(7)

puts "----------------------------------------------------"
puts

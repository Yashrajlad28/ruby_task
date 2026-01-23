# .send
class Maths

    def where?
        puts "You are in maths class"
    end

    private
    def add(a, b)
        a+b
    end

    def mul(a, b)
        a*b
    end
end

mbj = Maths.new
# passing method as parameter to send and also that methods arguments
puts ".send in action: #{mbj.send("add", 3, 4)}"

# .send can call private methods also, but 
# .public_send can call only public methods
mbj.public_send("where?")


# mbj object must have the passed method, otherwise you will get NoMethodError
# mbj.send("sub", 7, 1)

# WITHOUT METAPROGRAMMING
=begin
class User

    def initialize(name, email, permissions)
        @name = name
        @email = email
        @permissions = permissions # read, write, execute, delete
    end

    def read?
        return true if @permissions[0] == 1
        false
    end

    def write?
        return true if @permissions[1] == 1
        false
    end

    def execute?
        return true if @permissions[2] == 1
        false
    end

    def delete?
        return true if @permissions[3] == 1
        false
    end


end
=end

# WITH METAPROGRAMMING using the define_method
class User

    def initialize(name, email, permissions)
        @name = name
        @email = email
        @permissions = permissions # read, write, execute, delete
    end

    [:read?, :write?, :execute?, :delete?].each_with_index do |attr, ind|
        define_method(attr) do # THIS BASICALLY DEFINES METHOD AT RUNTIME
            permission = instance_variable_get("@permissions")[ind]
            return true if permission == 1
            false
        end
    end

end

u1 = User.new("Yashraj", "email", [1,0,0,0])
puts u1.read?
puts u1.write?
puts u1.execute?


# method_missing
class Ghost
  def method_missing(name, *args)
    puts "You tried to call #{name}, but it doesn't exist!"
  end
end

g = Ghost.new
g.fly
g.walk

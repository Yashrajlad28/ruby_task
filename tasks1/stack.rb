class Node
    
    attr_accessor :val, :next

    def initialize(val)
        @val = val
        @next = nil
    end

end

class Stack

    attr_accessor :top, :bottom

    def initialize
        @top = nil
        @bottom = nil
    end

    def push(val)

        if @top == nil
            @top = Node.new(val)
            # This Line was causing all the trouble
            # @top = @bottom 
            @bottom = @top
        else
            @top.next = Node.new(val)
            @top = @top.next
        end

    end

    def pop
        if @top == nil
            puts "Empty stack! Popping not possible"
            return
        elsif @top.next == nil
            @top = nil
        else
            curr = @bottom
            while curr.next != top do
                curr = curr.next
            end
            curr.next = nil
            @top = curr;
        end
    end

    def top_value
        if @top == nil
            puts "Empty stack cannot fetch top value"
        else
            return @top.val
        end
    end

end

obj = Stack.new
obj.push(1)
obj.pop
obj.pop
puts obj.top_value
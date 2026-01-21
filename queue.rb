class Node
    attr_accessor :val, :next

    def initialize(val)
        @val = val
        @next = nil
    end

end

class Queue

    attr_accessor :front, :rear

    def initialize
        @front = nil
        @rear = nil
    end

    def insert_end(val)
        if @front == nil
            @front = Node.new(val)
            @rear = @front
        else
            @rear.next = Node.new(val)
            @rear = @rear.next
        end
    end

    def delete_front
        if @front == nil
            puts "Empty queue! Cannot delete"
        elsif @front.next == nil #queue with single element
            @front = nil
        else
            @front = @front.next
        end
    end

    def front_value
        if @front == nil
            puts "Empty queue! Front value cannot be fetched"
        else
            return @front.val
        end
    end

    def print_queue
        if @front == nil
            puts "Empty queue! Nothing to print"
            return
        else
            curr = @front
            while curr != nil do
                print "#{curr.val} "
                curr = curr.next
            end
            puts
        end
    end

end

obj = Queue.new
obj.insert_end(1)
obj.insert_end(2)
obj.insert_end(3)
obj.insert_end(4)
obj.insert_end(5)
obj.print_queue
obj.delete_front
obj.delete_front
puts obj.front_value
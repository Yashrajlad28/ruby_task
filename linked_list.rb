class Node
    # attr_accessor creates public getters and setters
    # for the provided attributes
    attr_accessor :val, :next

    def initialize(val)
        @val = val
        @next = nil
    end

end

class Linked_List

    # Constructor
    def initialize
        @head = nil
        @tail = nil
    end

    # all methods are by default public
    # in ruby, except the initialize
    def insert(val)
        if @head == nil
            @head = Node.new(val)
            @tail = @head
        else
            @tail.next = Node.new(val)
            @tail = @tail.next # get_next is a method
        end
    end

    def display
        curr = @head
        while curr != nil do
            print "#{curr.val} "
            curr = curr.next
        end
        puts
    end

    def update(old_val, new_val)

        curr = find_node_by_data(old_val)
        if curr != nil
            curr.val = new_val
        else
            puts "Cannot update value that does not exits!"
        end

    end

    def delete(val)
        curr = find_node_by_data(val)
        if curr != nil
            prev = @head

            if prev == curr
                @head = @head.next
                return
            end

            while(prev.next != curr) do
                prev = prev.next
            end

            prev.next = curr.next
            curr.next = nil

        else
            puts "Cannot delete value that does not exits!"
        end
    end

    private

    def find_node_by_data(val)
        curr = @head

        while curr != nil do
            return curr if curr.val == val # use return for early exit
            curr = curr.next
        end

        nil # no need to use return statement explicitly, at the end of method
    end

end

obj = Linked_List.new
obj.insert(1)
obj.insert(2)
obj.insert(3)
obj.insert(4)
obj.display
obj.update(4,6)
obj.display
obj.delete(6)
obj.display
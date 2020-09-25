class Hanoi
    attr_reader :arr1, :arr2, :arr3
    def initialize
        @arr1 = [5,4,3,2,1]
        @arr2 = []
        @arr3 = []

    end

    def won?
        @arr2 == [5,4,3,2,1] || @arr3 == [5,4,3,2,1]
    end

    def turn
    
        begin 
            puts "pick array to pop from"
            popped = gets.chomp.to_i
        rescue 
            puts "input must be length of 1"
            retry if popped.length > 1
        end
        case popped
        when 1
            popped = @arr1.pop
        when 2
            popped = @arr2.pop
        when 3
            popped = @arr3.pop
        end

        begin
            puts "pick array to push to"
            pushed = gets.chomp.to_i
        rescue
            puts "input must be length of 1"
            retry if pushed.length> 1
        end
        case pushed
        when 1
         @arr1.push(popped)
        when 2
            @arr2.push(popped)
        when 3
            @arr3.push(popped)
        end
   
        p @arr1
        puts
        p @arr2
        puts
        p @arr3
     end

     def play
        until won?
            turn
        end
        print "good job now back to studying"
     end

end
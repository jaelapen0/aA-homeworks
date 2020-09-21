require "set"

class GraphNode
    attr_reader :value
    attr_accessor :neighbors
    def initialize(value)
        @value = value
        @neighbors = []
    end

    

end

def bfs(starting_node, target_value)
        
    list = [starting_node]
    until list.empty?
        result = list.shift
        if a.value == target_value
            return a
        else
            if result.neighbors.empty? == false
                result.neighbors.each {|n| list.push(n) }
            end
        end
    end

    nil
end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]



  p bfs(a, "b")

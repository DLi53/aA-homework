require 'byebug'
class GraphNode
    attr_accessor :val, :neighbors

    def initialize(val)
        self.val = val
        self.neighbors = []
    end
    
    def inspect
        @val.inspect
    end
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

def bfs(starting_node, target_value)
    queue = [starting_node]
    searched = []
    while !queue.empty?
        first = queue.shift
        searched.push(first)
        if first.val == target_value
            return first.val
        else
            first.neighbors.each do |child|
                if !searched.include?(child) 
                    queue.push(child)
                end
            end
        end       
        # p queue[-1]
    end

    return nil # if queue.empty?
end

p bfs(a, 'f')





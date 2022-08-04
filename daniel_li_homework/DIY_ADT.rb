# DIY ADTs
# Exercise 1 - Stack
# Let's write a Stack class. To do this, use the following framework:

  class Stack
    def initialize
        @stack = []
      # create ivar to store stack here!
    end

    def push(el)
        @stack.push(el)
      # adds an element to the stack
    end

    def pop
        @stack.pop
      # removes one element from the stack
    end

    def peek
        p @stack[-1]
      # returns, but doesn't remove, the top element in the stack
    end
  end

  s = Stack.new
  s.push('el1')
  s.push('el2')
  s.push('el3')
  s.push('el4')

  s.pop
#   s.peek

# To test that your code works, create a new instance of the Stack class, and play around with adding and removing elements. Remember, a stack follows the principle of LIFO!

# Exercise 2 - Queue
# Now let's write a Queue class. We will need the following instance methods: enqueue(el), dequeue, and peek.

# Test your code to ensure it follows the principle of FIFO.

class Queue

    def initialize
        @queue = []
    end

    def enqueue(el)
        @queue.push(el)
    end

    def dequeue
        @queue.shift
    end

    def peek
        p @queue[0]
    end
end

q = Queue.new

  q.enqueue('el1')
  q.enqueue('el2')
  q.enqueue('el3')
  q.enqueue('el4')
  q.dequeue
  q.dequeue
#   q.peek


# Exercise 3 - Map
# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.

# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!

# As always, test your code thoroughly to make sure all properties of maps are enforced.

class Map

    def initialize
        @map = Array.new(){Array.new(2)}
    end

    def map
        @map
    end

    def set(key,value)

    end

    def get(key)

    end

    def delete(key)

    end

    def show

    end
end

m = Map.new
p m.map
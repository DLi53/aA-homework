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



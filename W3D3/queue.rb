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
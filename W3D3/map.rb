# Exercise 3 - Map
# As you saw in the videos for tonight, a map can be implemented using a 2D array. Let's write a Map class (following a similar pattern to Stack and Queue) that implements a map using only arrays.

# Remember, a map stores information in key-value pairs, where the keys are always unique. When implemented with arrays, a map might look something like this: my_map = [[k1, v1], [k2, v2], [k3, v2], ...].

# Our Map class should have the following instance methods: set(key, value), get(key), delete(key), show. Note that the set method can be used to either create a new key-value pair or update the value for a pre-existing key. It's up to you to check whether a key currently exists!

# As always, test your code thoroughly to make sure all properties of maps are enforced.

class Map

    def initialize
        @map = Array.new(){Array.new(2)}
    end

    def set(key,value)
      notincluded = true
      @map.each do |arr|
        if arr[0] == key
          arr[1] = value
          notincluded = false
        end
      end

      @map << [key,value] if notincluded

    end

    def get(key)
        @map.each do |arr|
            return arr[1] if arr[0] == key   
        end
      
    end

    def delete(key)
        @map.each_with_index do |arr, i|
            if arr[0] == key
                @map.delete_at(i)
            end
        end
    end

    def show
      @map
    end
end



m = Map.new
# m.set('k','v')
# m.set('k','b')
# m.set('j','v')
# m.set('j','k')
# p m.get('k')

p m.show
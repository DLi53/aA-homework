Subclasses

class SubClass < SuperClass


end

module Walkable
    def walk
        puts "#{name} is walking"
    end
end

to use this module, need require 'filename'

in the clase, put => include walkable
this will bring that code into there, so you can use that method



Polymorphism
- Subclasses can override the bahavior of superclass
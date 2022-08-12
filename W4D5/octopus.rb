def sluggish(arr)
    longest = ''
    arr.each do |ele1|
        arr.each do |ele2|
            if ele1.length > ele2.length && ele1.length > longest.length
                longest = ele1
            elsif ele2.length > ele1.length && ele2.length > longest.length
                longest = ele2
            end
        end
    end
    longest

end


# p sluggish(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiiiiiiisshh', 'fsh', 
#  'fiiiish'])

def dominant(arr,&prc)
    prc ||= Proc.new{|a,b|a.length<=>b.length}
    return arr if arr.length <= 1
    mid = arr.length/2
    left = arr.take(mid).dominant(left,&prc)
    right = arr.drop(mid).dominant(right,&prc)

    merge(left,right,&prc)[-1]
end

def merge(left,right,&prc)
    arr = []
    until left.empty? || right.empty?
        case prc.call(left[0],right[0])
        when -1 
            arr << left.shift
        when 0
            arr << left.shift
        when 1
            arr << right.shift
        end
    end
    arr + left + right

end

# p dominant(['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiiiiiiisshh', 'fsh', 
#  'fiiiish']) # => ffiiiiiiiiiisshh

def clever(arr)
    longest = ''

    arr.each do |el|
        longest = el if el.length > longest.length
    end
    longest
end

tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", 
           "left",  "left-up" ]
def slow_dancing(dir,tiles_array)

    tiles_array.each_with_index do |tile, i|
        return i if tile == dir
    end
end

    new_tiles_data_structure = {
        "up" => 0,
        "right-up" => 1,
        "right"=> 2,
        "right-down" => 3,
        "down" => 4,
        "left-down" => 5,
        "left" => 6,
        "left-up" => 7
    }

def fast_dance(dir,hash)
    hash[dir]
end

p fast_dance("up", new_tiles_data_structure)
# > 0

p fast_dance("right-down", new_tiles_data_structure)
# > 3
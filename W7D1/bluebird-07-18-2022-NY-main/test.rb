require 'byebug'

def valid(str)
part = str.split(' ')

part.each do |party|
    # debugger
 if party[0] == party[0].upcase && party[1..-1] == party[1..-1].downcase
    return true
 else
    return false
 end
end
end

p valid('Kush Patel')xa

p valid('ROBER DOWNEY JR')
p valid('Kush Patel')

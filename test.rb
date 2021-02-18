string = 'AABBGATTTUUBGBB'

def max_character(input)
    result = Hash.new(0)
    input.chars.each {|char|

        if result.key?(char)
            result[char] += 1
        else
            result[char] = 1
        end

     }
    result.sort_by { |key, value| value }.last[0]
end 

p max_character(string)


# ------------------ Square every single digit from a number !
# def square_digits(num) 
# square = num.to_s.split("").map{ |x| x.to_i * x.to_i }.join.to_i
# p square
# end

# square_digits(9119)
# -------------------- Mumbling
# Output examples!
# accum("abcd")    # "A-Bb-Ccc-Dddd"
# accum("RqaEzty") # "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"

# def accum(s) 
#     items = ''
#     s.split('').to_a.each_with_index { |item, index| items += (item * (index+1) + '-').capitalize }
#     items[0..-2]
# end

# p accum('abcd')
# ------------------- Second Solution
# def accum_2(input) 
#     input.chars.each_with_index.map { |item, index| item.upcase + item.downcase * index }.join('-')
# end

# p accum_2('fsb')

# ---------------------- Sort Odd numbers in the array

# def sort_odd(input) 
#     odd_sorted = input.select(&:odd?).sort
#     input.map { |item| item.even? ? item : odd_sorted.shift }
# end

# p sort_odd([1, 11, 2, 22, 3, 13, 15, 16, 18, 9])

# ----------------------- Convert boolean values to strings 'Yes' or 'No'

# def bool_to_word(bool)
#   if bool == true 
#     return 'Yes' 
#   elsif bool == false 
#     return 'No' 
#   else 'Not valid !'
#   end

# end

# p bool_to_word(false)

# -------------------------- Unique in order 

# def unique_in_order(iterable)
#     result = [] 
#     iterable = iterable.split('') if !iterable.is_a? Array 
#     iterable.each_with_index { |item, index| result << item if iterable[index-1] !=item || index == 0 }
#     result
# end

# p unique_in_order('ABEECCDdADCCEE')

# --------------------- Sum of two lowest positive integers


# ------------------------- Odd or Even result ? 

# input = [-1]

# def odd_or_even(array) 
#     result = array.reduce(:+)
#     if result.to_i.odd?
#          "odd" 
#     else "even"
#     end
# end

# p odd_or_even(input)

# ----------------------------- Reverse Words
full_name = "Viktor space Emilov"

def reverse_words(string)
    reversed = ""
    string.split.map { |word| reversed << word.reverse + " " }
    p reversed.chop
end

reverse_words(full_name)
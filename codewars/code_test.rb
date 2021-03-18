# def sequence_sum(begin_number, end_number, step)
#     #your code here
#     if begin_number > end_number 
#       return 0 
#     else
#       x = begin_number + end_number + step
#     end
#     x
#   end
  
#   p sequence_sum(2,3,4)

#   def multiply(a, b)
#     a * b
#    end
#    p multiply(2,3)

def square_digits num
    result = []
    num.digits.reverse.map { |i| result << i * i}
     result.join.to_i
end
p square_digits(3212)
# cubes = Proc.new { |num| num ** 2 }
# square = Proc.new { |num| num ** 3 }
# multiply = Proc.new { |num| num * 2 }

# a = [1, 3, 5, 7]
# b = [2, 4, 6, 8]
# c = [1, 2, 3, 4]
# d = [10, 20, 30, 40]

# a_cubes, c_cubes = [a, c].map { |array| array.map(&cubes) }
# b_square = b.map(&square)
# d_multiply = d.map(&multiply)


# p a_cubes
# p b_square
# p c_cubes
# p d_multiply

# age = [32, 19, 49, 50, 66, 81, 58]

# is_old = Proc.new do |num|
#     num > 55
# end

# p age.select(&is_old)
# puts "Couple of candidates in the following ages: #{age.reject(&is_old)}"

# def if_given
#     p "Test the result"
#     yield if block_given?
#     p "test is over"
# end


# if_given do 
#     p "This is the reesult"
#     p "The yield has been called"
# end

# def test_method(input1, input2, input3)
#     p "Numbers are coming"
#     yield(input1, input2, input3) 
# end

# multiply = test_method(10, 20, 30) {|num1, num2, num3| num1 * num2 * num3}
# p multiply 
# sum = test_method(10, 20, 30) {|num1, num2, num3| num1 + num2 + num3}
# p sum
# def vitamins(vitamin_choice, &myprc)
#     p "#{vitamin_choice} keeps your immune system strong"
#     myprc.call(vitamin_choice) 
# end 

# vitamin_b1 = Proc.new { |vita|
#     p "And #{vita} is good for you blood presure"
#     }

# vitamin_b2 = Proc.new { |vita|
#     p "And #{vita} boost your energy"
# }

# vitamins("Vitamin C", &vitamin_b2)

# myprc = Proc.new { |name, age| p "#{name} is #{age} years old" }

# myprc.call("Viktor")
# puts
# mylabda = lambda { |name, age| p "#{name} is #{age} years old" }

# mylabda.call("Viktor", 31)
# def to_euros(dollars)
#     if dollars.is_a?(Numeric)
#         sum = dollars * 0.95
#     p "The exchange rate to Euro is #{sum.round(2)}"
#     end
# end

# def to_pessos(dollars)
#     if dollars.is_a?(Numeric)
#         sum = dollars * 20.21
#     p "The exchange rate to Pessos is #{sum.round(2)}"
#     end
# end

# def to_leva(dollars)
#     if dollars.is_a?(Numeric)
#         sum = dollars * 1.51
#     p "The exchange rate to Leva is #{sum.round(2)}"
#     end
# end

# to_euros(23)
# to_pessos(50)
# to_leva(6000)

# to_euros = lambda { |dollars| p "The exchange rate to Euro is #{dollars * 0.95}" }
# to_pessos = lambda { |dollars| p "The exchange rate to Pessos is #{dollars * 20.21}" }
# to_levas = lambda { |dollars| p "The exchange rate to Leva is #{dollars * 1.51}" }
# to_liras = lambda { |dollars| p "The exchange rate to Lira is #{dollars * 6.25}" }


# def convert(dollars, currency_lambda)
#     currency_lambda.call(dollars) if dollars.is_a?(Numeric)
# end    

# convert(6000, to_euros)
# convert(6000, to_pessos)
# convert(6000, to_levas)
# convert(6000, to_liras)

# today = Time.now
# p today.month
# p today.yday
# puts
# p my_birthday = Time.new(1993, 9, 11)
# p my_birthday.monday?
# p my_birthday.tuesday?
# p my_birthday.wednesday?
# p my_birthday.thursday?
# p my_birthday.friday?
# p my_birthday.saturday?
# p my_birthday.sunday?

# def find_day_of_the_year(number)
#     current_date = Time.new(2021, 1, 1)
#     one_day = 60 * 60 * 24

#     until current_date.yday == number
#         current_date += one_day
#     end
#     current_date
# end
# p find_day_of_the_year(254)

# random_day = Time.new(1989, 8, 16)
# p random_day.strftime('%B %d %Y')

# require 'time'

# p Time.strptime("02-22-2020", "%d-%m-%Y")

# File.open('MarsFile.txt', 'w') do |file|
#     file.puts 'Welcome to the red planet'
#     file.puts 'Mars has 2 moons'
#     file.write 'It is red because of the color of the sand'
# end

# File.open('MarsFile.txt').each do |line|
#    puts line
# end

# File.rename('MarsFile.txt', 'RedPlaner.txt')

# if File.exist?('MarsFile.txt')
# File.delete('MarsFile.txt')
# end

# ARGV.each do |argument|
#     number = argument.to_i 
#     puts "The square of #{number} is #{number ** 2}"
# end

# if 8 > 5
#     puts 'This is test.rb file'
# end

#  load 'insert.rb'
the_sun = "The sun is the biggest space object in the solar system!"

def custom_start_with(string, substring)
    # start_word = string.split
    p string[0, substring.length] == substring 
end

def custom_end_with(string, substring)
    p string[ -substring.length..-1] == substring 
end

custom_start_with(the_sun, "T")
custom_end_with(the_sun, "tem")
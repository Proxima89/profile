# class Hash 
#     def duplicate_values
#         values = []
#         dupli = []
#         self.each_value do |element| 
#             values.include?(element) ? dupli << element : values << element 
#         end
#         dupli.uniq
#     end
# end

# scores = { a: 2, b: 99, c: 55, d: 2,
#            e: 2, f: 30, g: 99, h: 30 }

# p scores.duplicate_values
# --------------------------------------------------------
# class Fixnum 
#     def to_minutes 
#         self * 60 
#     end

#     def to_hours 
#         self * 60 * 60 
#     end

#     def to_days 
#         self * 60 * 60 * 24
#     end
# end

# p Time.now + 5.to_hours
# -----------------------------------------------------
# class String 
#     def alphabetic_sum
#         alphabet = ("a".."z").to_a
#         sum = 0
#         self.downcase.each_char do |char|
#             if alphabet.include?(char)
#                 numeric_value = alphabet.index(char) + 1
#                 sum += numeric_value
#             end
#         end
#         sum
#     end
# end

# puts "t".alphabetic_sum
# puts "i".alphabetic_sum
# puts "j".alphabetic_sum
# puts "h".alphabetic_sum
# puts "p".alphabetic_sum

# ----------------------------------------------------------

# class Fixnum 
#     def custom_times
#         i = 0
#         while i < self 
#             yield(i + 1)
#             i += 1
#         end
#     end
# end

# 2.custom_times { |i| puts i }

# ---------------------------------------------------------------

# class Book 
#     def initialize(title, author, pages)
#         @title = title 
#         @author = author 
#         @pages = pages
#     end
# end

# goosbumps = Book.new("Night of the Living Dummy", "Viktor Emilov", 455)

# # p goosbumps

# class Book 
#     def read
#         1.step(@pages, 10) { |page| puts "Reading page #{page}..." }
#         puts "Done! #{@title} was a great book"
#     end
# end

# animal_farm = Book.new("Animal Farm", "George Ezra", 122)
# p animal_farm.read

# ------------------------------------------------------------------

class Bicycle
@@make = "BikeTech"
@@count = 0 

    def self.description
        "Hi there, I'm the blueprint"
    end

    def self.count 
        @@count
    end

    def maker
        @@maker
    end

    def initialize 
        @@count += 1
    end
end

a = Bicycle.new
b = Bicycle.new
c = Bicycle.new
d = Bicycle.new
e = Bicycle.new

p Bicycle.count
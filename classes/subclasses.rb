# class Employee 
#     attr_accessor :age 
#     attr_reader :name 
#     def initialize(name, age) 
#         @name = name 
#         @age = age
#     end
#     def introduce 
#         "Hi my name is #{name}, and I am #{age} years old"
#     end
# end

# viktor = Employee.new("Viktor", 31)
# puts viktor.introduce

# class Manager < Employee
#     def yell
#         "Who is the boss? I'm the boss!"
#     end
# end

# class Worker < Employee 
#     def clock_in (time)
#         "Starting my shift at #{time}"
#     end

#     def yell 
#         "I'm working, I'm working!"
#     end
# end

# bob = Manager.new("Bob", 38)
# dan = Worker.new("Dan", 25)

# puts bob.introduce
# puts dan.yell

# p bob.yell
# p dan.clock_in("12:30")
# ----------------------------------------------------------
# class Product 
#     @@product_counter = 0

#     def self.product_counter 
#         @@product_counter 
#     end

#     def initialize 
#         @@product_counter += 1
#     end
# end

# class Book < Product
#     @@book_counter = 0 

#     def self.counter 
#         @@book_counter
#     end

#     def initialize 
#         super 
#         @@book_counter += 1
#     end
# end

# class Desk < Product
#     @@desk_counter = 0

#     def self.counter 
#         @@desk_counter
#     end

#     def initialize 
#         super   
#         @@desk_counter += 1
#     end
# end

# a = Desk.new
# b = Desk.new
# c = Desk.new
# d = Desk.new
# p Desk.counter
# puts
# e = Book.new 
# f = Book.new 
# g = Book.new 
# p Book.counter
# puts
# p Product.product_counter

# -------------------------------------------------------------

# class Candidate 
#     attr_accessor :name, :age, :occupation, :hobby, :birthplace

#     def initialize(name, details = {})
#         default = {hobby: "Tech", occupation: 'Web Developer', birthplace: 'Earth'}
#         default.merge!(details)

#         @name = name 
#         @age = default[:age] 
#         @occupation = default[:occupation] 
#         @hobby = default[:hobby]
#         @birthplace = default[:birthplace] 
#     end
# end

# senator = Candidate.new("Viktor Emilov", age: 31, occupation: "Engineer", birthplace: 'Bulgaria')
# p senator.name
# p senator.hobby 
# p senator.occupation
# p senator.birthplace

# ------------------------------------------------------------------------

# An album class that stores an array of songs
class Album 
    include Enumerable 
# An array object of songs. Each song is a String.
    attr_reader :songs
# Ceates a new Album instance with an empty songs
    def initialize 
        @songs = []
    end
# Add a song to the Album object's song array
    def add_song(song)
        songs << song 
    end
# Yield each in song in the album to a block
    def each 
        songs.each do |song|
            yield song
        end
    end
end

thriller = Album.new 
thriller.add_song("Thriller")
thriller.add_song("Billie Jean")
puts thriller.songs
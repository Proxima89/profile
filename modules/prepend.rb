# module Purchaseable 
#     def purchase(item) 
#         p "The #{item} has been purchased!"
#     end
# end

# class Bookstore 
#     include Purchaseable 

#     def purchase(item) 
#         "You bought a copy of #{item} at the bookstore!"
#     end
# end

# p Bookstore.ancestors

# book = Bookstore.new 
# p book.purchase("Sahara")

# module Announcer 
#     def who_am_i 
#         "The name of this class is #{self}"
#     end
# end

# class Dog 
#     extend Announcer 
# end 

# class Cat 
#     extend Announcer
# end

# p Dog.who_am_i 
# p Cat.who_am_i 

# class ConvenienceStore 
#     include Enumerable 
#     attr_reader :snacks

#     def initialize 
#         @snacks = []
#     end

#     def add_snack(snack)
#         snacks << snack
#     end

#     def each 
#         snacks.each do |snack| 
#             yield snack
#         end
#     end
# end

# tesco = ConvenienceStore.new 
# tesco.add_snack('Doritos')
# tesco.add_snack('Taylors')
# tesco.add_snack('Wallkers')

# p tesco.reject { |snack| snack.upcase.include?("A") }

class Gadget 

    attr_writer :password
    attr_reader :prod_number 
    attr_accessor :username

    def initialize(username, passoword)
        @username = username 
        @password = password 
        @prod_number = "#{("a".."z").to_a.sample}--#{rand(1..999)}" 
    end

    def to_s 
        "Gadget #{prod_number} has the username #{username}.
        it is made from the #{self.class} class and it
        has the ID #{self.object_id}."
    end
end

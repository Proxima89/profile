# module LenghtConvertion 
# WEBSITE = "www.website.com"
#     def self.miles_to_feet(miles) 
#         miles * 5280.0
#     end
#     def self.miles_to_inches(miles)
#     end 
#     def self.miles_to_centimeters(miles) 
#     end
# end
# p LenghtConvertion.miles_to_feet(32.4)

# module MoneyConverter 
#     def self.dollars_to_euro(dollars)
#    a     dollars * 0.85 
#     end 

#     def self.dollars_to_leva(dollars)
#         leva = 1.35 
#         dollars * leva
#     end 

#     def self.dollars_to_pessos(dollars)
#         result = (dollars * 5) / 2
#         result
#     end
# end

# p MoneyConverter.dollars_to_pessos(100)
# p MoneyConverter.dollars_to_euro(100)
# p MoneyConverter.dollars_to_leva(100)

# module Square
#     PI = 3.14591 

#     def
# end

module Createable 
    def present(item)
        p "The #{item} has been recieved."
    end
end

class ChristmasGift
    include Createable
end

class Supermarket 
    def sainsburys(item) 
        p "The #{item} has been ordered"
    end
end

class Shopping < Supermarket 
end

card = ChristmasGift.new 
card.present('Message Card')

fruits = Supermarket.new 
fruits.sainsburys("Banana")

vegi = Shopping.new 
vegi.sainsburys("Brocoli")

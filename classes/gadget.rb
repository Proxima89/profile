class Gadget 

    attr_accessor :username 
    attr_reader :prod_number 
    attr_writer :password

    def initialize(username, password) 
        @username = username 
        @password = password
        @prod_number = "#{("a".."z").to_a.sample} --#{rand(1..999)}"
    end

    def to_s 
        "Gadget #{@prod_number} has the username #{@username}."
    end
end

user1 = Gadget.new('Viktor', 123456)
user2 = Gadget.new('Weppes', 654321)
user3 = Gadget.new('Rubyist', 'topsecret')

p user1
 user2.username = "Programmer" 
p user2 
p user3

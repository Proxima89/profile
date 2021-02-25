class Gadget 
    def initialize 
        @username = "User #{rand(1..100)}"
        @password  = "topsecret"
        @prod_number = "#{("a".."z").to_a.sample} --#{rand(1..999)}"
    end

    def to_s 
        "Gadget #{@prod_number} has the username #{@username}."
    end

    def username 
        @username
    end

    def username=(username) 
        @username = username
    end

    def prod_number 
        @prod_number
    end

    def password=(new_pass) 
        @password = new_pass
    end
end


phone = Gadget.new 
laptop = Gadget.new

p phone.password=("bestpassever")

p phone.username
phone.username=("Viktor")

p phone.username
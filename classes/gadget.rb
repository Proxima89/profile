require_relative 'app_store'

class Gadget 

    attr_reader :prod_number, :apps 
    attr_accessor :username

    def initialize(username, password) 
        @username = username 
        @password = password
        @prod_number = gen_prod_num
        @apps = []
    end

    def to_s 
        "Gadget #{prod_number} has the username #{username}.
        It is made from #{self.class} class,
        and it has the ID #{object_id}."
    end

    def install_app(name)
        app = AppStore.find_app(name)
        @apps << app unless @apps.include?(app)
    end

    def delete_app(name)
        app = apps.find { |installed_app| installed_app.name == name }
        apps.delete(app) unless app.nil?
    end

    def reset(username, password) 
        self.username = username 
        self.password = password 
        self.apps = []
    end

    def pasword=(new_password)
        @password = new_password if validate_password(new_password)
    end

    private 

    attr_writer :apps 

    def gen_prod_num 
        start_digits = rand(10000..99999)
        end_digits = rand(10000..99999)
        alphabet = ("A".."Z").to_a 
        middle_digits = "2021"
        5.times { middle_digits << alphabet.sample }
        "#{start_digits}--#{middle_digits}--#{end_digits}"
    end

    def validate_password(new_password)
        new_password.is_a?(String) && new_password.length >= 6 && new_password =~ /\d/
    end
end

g = Gadget.new("Viktor", "password")
# p g.apps 

g.install_app(:Chat)
g.install_app(:Twitter)
# p g.apps

# g.delete_app(:Chat) 
# g.delete_app(:Twitter)
p g.apps

class Car 
    def initialize(age, miles)
        base_value = 20000
        age_deduction = age * 1000
        miles_deduction = (miles / 10.to_f)
        @value = base_value - age_deduction - miles_deduction 
    end 
    def compare_car_with(car)
        self.value > car.value ? "Your car is better!" : "Your car is wrost"
    end

    protected 
    
    def value 
        @value
    end
end

honda = Car.new(3, 25000)
bmw = Car.new(3, 24500)
p honda.compare_car_with(bmw)
class Car
    @@number_of_wheels = 4 # Class variable
    def self.number_of_wheels # Class method
        @@number_of_wheels
    end
    def self.number_of_wheels=(number) # Setter method to modify class variables
        @@number_of_wheels = number
    end
    
    def initialize

    end
    def print_string
        puts "A car has #{@@number_of_wheels} wheels"
    end
end

puts Car.number_of_wheels
honda = Car.new
Car.number_of_wheels = 5
# puts honda.number_of_wheels # Will fail, because number_of_wheels is a class method
honda.print_string
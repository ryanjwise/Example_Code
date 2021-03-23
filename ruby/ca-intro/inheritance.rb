# A class can inherit from another class
# Every class has implicit inheritance from the object class
# Makes code more modular and easier to test, therefor more maintainable.
# Class' should be limited to one per file, usually they are required as needed.

String.superclass # Will show inheritance from the Object class
"Hello".class.superclass # As above
String.ancestors # Will show all of the classes and modules from which it inherits

# Superclass == Parent Class
# Subclass   == Child class

# class Animal
#     attr_accessor :number_of_legs

#     def initialize(number_of_legs)
#         @number_of_legs = number_of_legs
#     end
# end

# class Mammal < Animal # Inherit properties from Superclass Animal
#     def got_milk?
#         true
#     end
# end

# spider = Animal.new(8)
# puts spider.number_of_legs
# panda = Mammal.new(4)
# puts panda.number_of_legs
# puts panda.got_milk?
# puts spider.got_milk?
require_relative "flight" #Import the contents of flight.rb and paste it here

class Animal
    attr_accessor :number_of_legs
    attr_reader :cold_blooded

    def initialize(number_of_legs, cold_blooded)
        @number_of_legs = number_of_legs
        @cold_blooded = cold_blooded
    end
end

class Mammal < Animal # Inherit properties from Superclass Animal
    attr_reader :fur
    def initialize
        super(4, false) # Runs the parent class initialize
        # @number_of_legs = 4 # Override the parent class
        @fur = true
    end
    def got_milk?
        true
    end
end
class Bird < Animal
    include Flight # adds items from the flight module
    def initialize
        super(2, false)

    end
end
spider = Animal.new(8, true)
puts spider.number_of_legs
panda = Mammal.new
puts panda.number_of_legs
puts panda.cold_blooded

penguin = Bird.new()
puts penguin.can_fly?
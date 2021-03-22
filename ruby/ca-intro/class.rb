# class Movies # Capitalise the first letter of each word (pascal case)
#     def initialize # This method is called when a new object of class is constructed
#         @title = "The Shining"
#         @director = "Stanley Kubrick"
#     end

#     def title           # Getter/ Accessor method
#         return @title
#     end
#     def title=(title)   # Setter or mutator method
#         @title = title
#     end
#     def director           # Getter/ Accessor method
#         return @director
#     end
#     def director=(director)   # Setter or mutator method
#         @director = director
#     end
# end

class Movies # Capitalise the first letter of each word (pascal case)
    attr_reader :actors, :director# Just Getter or Accessor methods
    attr_writer # Sets Settor or mutator
    attr_accessor :title # Sets both accessors and mutators
    
    @@number_of_movies = 0

    def initialize(title,director)# This method is called when a new object of class is constructed
        @title = title
        @director = director
        @actors = []
        @@number_of_movies += 1
    end

    def print_movie # Can override the base class if desired
        puts "The Movie title is: #{@title}"
        puts "The movie director is: #{@director}"
        puts "The actors in this movie are:"
        @actors.each do | name |
            puts name
        end
    end

    def to_s
        "Title: #{@title}, \nDirector: #{@director}"
    end

    def add_actor(name:) #name: is given so that later named arguments could be passed to the method
        @actors << name
    end

    def self.number_of_movies
        @@number_of_movies
    end
end

the_shining = Movies.new("The Shining", "Stanley Kubrick") # Create a new object of the movies class
# puts the_shining # Will return the memory location of the_shiing object
# puts the_shining.class # Returns the class the object belongs too
lord_of_the_rings = Movies.new("Lord of the Rings", "A director" )

the_shining.to_s
the_shining.add_actor(name: "Jack Nicholson")
puts the_shining.to_s
puts
the_shining.print_movie
puts
pp Movies.number_of_movies
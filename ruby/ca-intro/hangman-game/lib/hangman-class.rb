require 'faker'
require_relative "./game-class.rb"

class Hangman
    def run_app
        loop do
            display_welcome
            display_menu
            process_input(menu_input)
        end
    end

    def display_welcome
        puts "-" *20
        puts "Welcome to Hangman!"
        puts "-" *20
    end

    def display_menu
        puts "1. Play Game"
        puts "2. Exit"
    end

    def display_categories
        puts "Choose your category"
        puts "\t1. Movie"
        puts "\t2. Game"
        puts "\t3. Programming Language"
    end

    def menu_input
        print "\nEnter Selection: "
        gets.to_i
    end

    def process_input(menu_selection)
        case menu_selection
        when 1
            initiate_game
        when 2
            exit_game
        end
    end

    def exit_game
        puts "Goodbye!"
        exit
    end

    def initiate_game
        #get categoy selection
        display_categories
        menu_selection = menu_input
        #generate word from selection
        word = generate_word(menu_selection)
        #start game
        game = Game.new(word)
        game.run
    end

    def generate_word(menu_selection)
        case menu_selection
        when 1
            Faker::Movie.title
        when 2
            Faker::Game.title
        when 3
            Faker::ProgrammingLanguage.name
        end
    end
end
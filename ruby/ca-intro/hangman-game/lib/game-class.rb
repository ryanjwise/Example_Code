class Game

    def initialize
        @words = ['fillet', 'chicken', 'test', 'consider', 'implications', 'then', 'move', 'faster', 'and', 'break', 'things']
        @word = @words.sample
        @lives = @word.length + 2
        @guessed_letters = []
        @game_state = true
    end

    def run
        while @game_state
            system 'clear'
            line_seperator
            display_word
            display_lives
            check_lives
            display_guessed_letters
            line_seperator
            display_instructions
            process_input(user_input)
        end
    end

    def line_seperator
        puts "<>"* 10
    end

    def display_word
        @word.chars do | char |
            if @guessed_letters.include?(char)
                print "#{char.upcase} "
            else
                print '_ '
            end
        end
        puts
    end

    def display_lives
        puts "You have #{@lives-1} lives remaining"
    end

    def display_instructions
        puts "Enter a letter or your guess:"
    end

    def all_letters(str)
        # Will return true only if passed string is alphanumeric
        str[/[a-zA-Z]+/]  == str
    end

    def user_input
        loop do
            input = gets.strip.downcase
            if all_letters(input)
                return input
            else
                puts "Something went wrong, please input a letter, or make a guess!"
            end
        end
    end

    def process_input(input)
        if input.length <= 1
            process_letter(input)
        else
            process_guess(input)
        end
    end

    def process_letter(letter)
        @guessed_letters << letter
        update_lives(letter)
    end

    def process_guess(guess)
        if @word == guess
            win
        else
            game_over
        end
    end

    def update_lives(letter)
        @lives -= 1 unless @word.include?(letter)
    end

    def check_lives
        return unless @lives <= 0 # Guard clause, prevents ecectution of statement if condition not met
        game_over
    end
    def game_over
            puts "Game Over!"
            puts "The word was #{@word}"
            @game_state = false
            exit
        end
    end

    def win
        puts "You win!"
        @game_state = false
    end

    def display_guessed_letters
        puts
        puts "Guessed Letters:"
        @guessed_letters.each do |letter|
            print "#{letter.upcase} "
        end
        puts
    end
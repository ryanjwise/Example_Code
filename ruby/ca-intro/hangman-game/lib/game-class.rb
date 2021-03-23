class Game

    def initialize
        @words = ['fillet', 'chicken', 'test', 'consider', 'implications', 'then', 'move', 'faster', 'and', 'break', 'things']
        @word = @words.sample
        @lives = @word.length + 2
        @guessed_letters = []
    end

    def run
        loop do 
            display_word
            display_lives
            display_instructions
            process_input(user_input)
        end
    end

    def display_word
        puts
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
        puts
        puts "You have #{@lives} lives remaining"
    end

    def display_instructions
        puts "Enter a letter or your guess:"
    end

    def user_input
        gets.strip.downcase
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

    end

    def update_lives(letter)
        @lives -= 1 unless @word.include?(letter)
    end
end

class Game

    def initialize
        @words = ['fillet', 'chicken', 'test', 'consider', 'implications', 'then', 'move', 'faster', 'and', 'break', 'things']
        @word = @words.sample
        @lives = @word.length + 2
        @guessed_letters = []
    end

    def run
        display_word
        display_lives
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
end
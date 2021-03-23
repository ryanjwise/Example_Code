class Game

    def initialize
        @words = ["fillet", "chicken", "test", "consider", "implications", "then", "move", "faster", "and", "break", "things"]
        @word = @words.sample
        @lives = @word.length + 2
        @guessed_letters = []
    end

    def run
        display_word
    end

    def display_word
        @word.chars do | char |
            if @guessed_letters.include?(char)
                print "#{char} "
            else
                print "_ "
            end
        end
    end
end
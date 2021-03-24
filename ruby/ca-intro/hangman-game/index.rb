require_relative "lib/hangman-class.rb"

# commandline_arguments = ARGV 
# if commandline_arguments[0] == '--help'
#     puts "This is a hangman game"
#     puts "Figure it out yourself"
# else
#     hangman = Hangman.new # Initialise gamestate
#     hangman.run_app # Run Game
# end

first_argument, *commandline_arguments = ARGV 
ARGV.clear # Clears arguments from thread and leaves gets methods in a functional state
case first_argument
when '--help'
    puts "This is a hangman game"
    puts "Figure it out yourself"
else
    hangman = Hangman.new # Initialise gamestate
    hangman.run_app # Run Game
end

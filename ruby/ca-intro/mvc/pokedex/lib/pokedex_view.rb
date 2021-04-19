require 'tty-prompt'

class PokedexView

  def initialize
    @prompt = TTY::Prompt.new
  end
  def welcome_screen
    puts "Welcome to the pokedex!"
  end

  def main_menu
    @prompt.select('Select: ', [
      {value: 1, name: 'search pokemon'},
      {value: 2, name: 'add a pokemon1'},
      {value: 3, name: 'exit program'}
    ])
  end
end
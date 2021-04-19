require_relative 'pokedex_model'
require_relative 'pokedex_view'

class PokedexController
  def initialize
    @model = PokedexModel.new
    @view = PokedexView.new
  end

  def run
    @view.welcome_screen
    menu_selection(@view.main_menu)
    pp @model.extract_pokemon
  end

  def menu_selection(input)
    case input
    when 1
    when 2
    when 3
    when 4
    when 5
    end
  end
end
class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuffInBelly     = 10  # He's full.
    @stuffInIntestine =  0  # He doesn't need to go.
    puts @name + ' is born.'
  end

  def menu
    answer = ''
    puts "\nWhat would you like to do?"
    puts "
    '1': Feed #{@name}
    '2': Walk #{@name}
    '3': Toss #{@name}
    '4': Rock #{@name}
    '5': Put #{@name} To Bed
    'q': Quit Simulation"
    answer = gets.chomp.to_s
    case answer
    when '1'
      feed
      menu
    when '2'
      walk
      menu
    when '3'
      toss
      menu
    when '4'
      rock
      menu
    when '5'
      putToBed
      menu
    when 'q'
      puts "Ending simulation"
      exit
    else
      puts "Please input one of the options given."
      menu
    end
  end

  def feed
    puts 'You feed ' + @name + '.'
    @stuffInBelly = 10
    passageOfTime
  end

  def walk
    puts 'You walk ' + @name + '.'
    @stuffInIntestine = 0
    passageOfTime
  end

  def putToBed
    puts 'You put ' + @name + ' to bed.'
    @asleep = true
    3.times do
      passageOfTime if @asleep
      puts @name + ' snores, filling the room with smoke.' if @asleep
    end
    if @asleep
      @asleep = false
      puts @name + ' wakes up slowly.'
    end
  end

  def toss
    puts 'You toss ' + @name + ' up into the air.'
    puts 'He giggles, which singes your eyebrows.'
    passageOfTime
  end

  def rock
    puts 'You rock ' + @name + ' gently.'
    @asleep = true
    puts 'He briefly dozes off...'
    passageOfTime
    if @asleep
      @asleep = false
      puts '...but wakes when you stop.'
    end
  end

  private
  # "private" means that the methods defined here are
  # methods internal to the object.  (You can feed
  # your dragon, but you can't ask him if he's hungry.)
  def hungry?
    # Method names can end with "?".
    # Usually, we only do this if the method
    # returns true or false, like this:
    @stuffInBelly <= 2
  end

  def poopy?
    @stuffInIntestine >= 8
  end

  def passageOfTime
    if @stuffInBelly > 0
      # Move food from belly to intestine.
      @stuffInBelly     -= 1
      @stuffInIntestine += 1
    else # Our dragon is starving!
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' is starving!  In desperation, he ate YOU!'
      exit  # This quits the program.
    end

    if @stuffInIntestine >= 10
      @stuffInIntestine = 0
      puts 'Whoops!  ' + @name + ' had an accident...'
    end

    if hungry?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + '\'s stomach grumbles...'
    end

    if poopy?
      if @asleep
        @asleep = false
        puts 'He wakes up suddenly!'
      end
      puts @name + ' does the potty dance...'
    end
  end
end


name = ''

puts "Hello, it looks like you're dragon egg is about to hatch!\nWhat would you like to call it?"
name = gets.chomp.capitalize
pet = Dragon.new(name)
quit = false

puts "Goodluck looking after #{name}, if you want to quit at anytime, just enter 'q' into the prompt."
pet.menu


# pet.feed
# pet.toss
# pet.walk
# pet.putToBed
# pet.rock
# pet.putToBed
# pet.putToBed
# pet.putToBed
# pet.putToBed
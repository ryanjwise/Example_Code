class OrangeTree
  def initialize
    @height = 3
    @age          = 0
    @orangeCount  = 0
    @fruitBearing = false
  end

  def height
    puts "The orange tree is #{@height}cm tall."
    @height
  end

  def oneYearPasses
    puts "A year goes by...\n\n"
    @age += 1
    @height += rand(26..33)
    @orangeCount = 0
    @fruitBearing = true if @age > 3 && @fruitBearing == false
    if @fruitBearing == true
      @orangeCount += (rand(12) * (0.25 * @age)) # Has the potential to bear 0 fruit in a year
    end
  end

  def countTheOranges
    puts "there are #{@orangeCount} oranges on the tree."
    @orangeCount
  end

  def pickAnOrange
    if @orangeCount > 0
      @orangeCount -= 1
      puts 'You pluck a delishously tender orange from the tree.'
    else
      puts "You couldn't find any oranges."
    end
  end
end

tree = OrangeTree.new
tree.height
tree.countTheOranges
tree.pickAnOrange

tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange

tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange

tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange

tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.countTheOranges

tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.countTheOranges

tree.oneYearPasses
tree.height
tree.countTheOranges
tree.pickAnOrange
tree.countTheOranges

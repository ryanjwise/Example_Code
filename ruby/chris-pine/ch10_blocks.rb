nl = "\n-----New_Section-----\n\n"
# Procs are like methods, but they can be passed as objects
toast = proc do
  puts 'Cheers!'
end

toast.call
toast.call
toast.call

puts nl

# Like methods, you can pass parameters to a proc
doYouLike = proc do |aGoodThing|
  puts 'I *really* like ' + aGoodThing + '!'
end

doYouLike.call 'chocolate'
doYouLike.call 'ruby'

puts nl

# Or even pass a proc to a method.
def doSelfImportantly(someProc)
  puts 'Everybody just HOLD ON!  I have something to do...'
  someProc.call
  puts 'Ok everyone, I\'m done.  Go on with what you were doing.'
end

sayHello = proc do
  puts 'hello'
end

sayGoodbye = proc do
  puts 'goodbye'
end

doSelfImportantly sayHello
doSelfImportantly sayGoodbye

puts nl

# Mehtods can be written that will perform a passed proc a set, or variable number of times.

# Do aprx 50% of the time
def maybeDo(someProc)
  someProc.call if rand(2) == 0
end

# Do twice
def twiceDo(someProc)
  someProc.call
  someProc.call
end

wink = proc do
  puts '<wink>'
end

glance = proc do
  puts '<glance>'
end

maybeDo wink
maybeDo glance
twiceDo wink
twiceDo glance

puts nl

def doUntilFalse(firstInput, someProc)
  input = firstInput
  output = firstInput

  while output
    input = output
    output = someProc.call input
  end

  input
end

buildArrayOfSquares = proc do |array|
  lastNumber = array.last
  if lastNumber <= 0
    false
  else
    array.pop # Take off the last number...
    array.push lastNumber * lastNumber  # ...and replace it with its square...
    array.push lastNumber - 1           # ...followed by the next smaller number.
  end
end

alwaysFalse = proc do |_justIgnoreMe|
  false
end

puts doUntilFalse([5], buildArrayOfSquares).inspect
puts doUntilFalse('I\'m writing this at 3:00 am; someone knock me out!', alwaysFalse)

# [25, 16, 9, 4, 1, 0]
# I'm writing this at 3:00 am; someone knock me out!

puts nl

# Procs that are returned by methods
def compose(proc1, proc2)
  proc do |x|
    proc2.call(proc1.call(x))
  end
end

squareIt = proc do |x|
  x * x
end

doubleIt = proc do |x|
  x + x
end

doubleThenSquare = compose doubleIt, squareIt
squareThenDouble = compose squareIt, doubleIt

puts doubleThenSquare.call(5)
puts squareThenDouble.call(5)

puts nl

# Passing blocks (not procs) to methods
class Array
  def eachEven(&wasABlock_nowAProc)
    # We start with "true" because arrays start with 0, which is even.
    isEven = true

    each do |object|
      wasABlock_nowAProc.call object if isEven

      isEven = !isEven # Toggle from even to odd, or odd to even.
    end
  end
end

['apple', 'bad apple', 'cherry', 'durian'].eachEven do |fruit|
  puts 'Yum!  I just love ' + fruit + ' pies, don\'t you?'
end

# Remember, we are getting the even-numbered elements
# of the array, all of which happen to be odd numbers,
# just because I like to cause problems like that.
[1, 2, 3, 4, 5].eachEven do |oddBall|
  puts oddBall.to_s + ' is NOT an even number!'
end

puts nl

# Profiling a block
def profile(descriptionOfBlock, &block)
  startTime = Time.now

  block.call

  duration = Time.now - startTime

  puts descriptionOfBlock + ':  ' + duration.to_s + ' seconds'
end

profile '25000 doublings' do
  number = 1

  25_000.times do
    number += number
  end

  # Show the number of digits in this HUGE number.
  puts number.to_s.length.to_s + ' digits'
end

profile 'count to a million' do
  number = 0
  1_000_000.times do
    number += 1
  end
end

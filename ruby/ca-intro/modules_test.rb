# Allow you to input sets of code
# Can input functionality for m classes and allow us to reuse classes

module TestModule
    NUMBER = 3
    class TestClass
        def print
            puts "This is a test"
        end
    end
end

puts TestModule::NUMBER
test = TestModule::TestClass.new
test.print
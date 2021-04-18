require 'rspec/autorun'

class Factorial
  def factorial_of(n)
    (1..n).inject(:*)
  end
end

# A describe block groups code together and informs Rspec which class to target
describe Factorial do
  # If many tests will reuse the same objects, 
  # they can be defined within the contextual scope using the let method:
  let(:calculator) { Factorial.new } # NB. Will not be run until required
  # An it block is an individual test, the initial line names the test
  it "finds the factorial of 5" do 
    # Factorial class not required to be instantiated here if the let method is employed
    # calculator = Factorial.new

    expect(calculator.factorial_of(5)).to eq(120)
  end

  xit "tests marked 'xit' will be disabled and not run" do
    # Test Block
  end

  # When working with TDD, errors WILL occur.
  # As long as the question is well designed, we can use those errors to
  # guide development of the methods they are testing
end

# If test are required to be run before or after all tests are run:
describe Shop do
  # Use context to define a group of tests within the same describe block
  context "For all tests" do
    before(:all) { Shop.prepare_database }
    after(:all) { Shop.cleanup_database }
  end
end

# If test are required to be run before or after each tests is run:
describe Shop do
  context "For each test" do
    before(:each) { Shop.prepare_database }
    after(:each) { Shop.cleanup_database }
  end
end

###### To run a specific test only: #######
> ruby person.rb -e bacon

###### Mathchers #######
eq
be_something
include #(for arrays & hashes)
start_with
end_with
match #(for regular expression matching)
be_between
have_key / have_value #(for hashes)
be_instance_of
respond_to
have_attributes # (for testing instance variables)
raise_error

# More examples:
# https://www.rubyguides.com/2018/07/rspec-tutorial/#Getting_Started_With_RSpec
# https://www.rubyguides.com/2018/07/rspec-tutorial/
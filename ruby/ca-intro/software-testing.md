# Software testing

Software testing is a massive componant of development, their are many different goals of testing and thus many different types of testing.

## Unit Testing

- Done from the start of the process
  - Often with TDD (Test Driven Development)
- Automated
- Test that the behavior of individual functions
- Can test whenever a bugfix is relaesed, new features are added, or refactoring has occured.

### Test Driven Development

- Tests are written before the code is written
  - We start by writing code that fails
  - We write code to pass the test
  - We make the code better

- Helps to ensure no regression is released into the code
- Helps us write testable code
- Helps us consider implementation before we start writing

### Applications

- Ruby
  - Rspec
  - MiniTest
  - TestUnit
- JavaScript
  - Mocha
  - Jest

### Rspec

To install rspec run `gem install rspec` to install globally
Alternativelyt it can be added asa  bundler requirement in an individual requirement

```rb
describe 'maths methods' do
  it 'should be able to add' do
  end
end
```

- `describe`
  - describes a group of different tests
- `it`
  - describes a single test

## Integration Testing

- Test that all units function correctly together
- Test code base in a more 'real' environment.
- Test using realistic infrastucture

## End to end-testing

- Comprehensive testing the entire application process
- Test front and back end code
- Test user scenarios are performed as expected

### Applications

- Selenium
- Cypress

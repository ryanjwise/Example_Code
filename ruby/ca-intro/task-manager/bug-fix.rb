require_relative "./task.rb"

class Bugfix < Task
    attr_accessor :location, :priority

    def initialize(name, location, priority, description = '')
        @location = location
        @priority = priority
        super(name, description)
    end

    def to_s
        start = super
        "#{start}, priority: #{@priority}"
    end
end

test = Bugfix.new('a', "place", "high")
puts test.to_s
require_relative "./task.rb"

class FeatureRequest < Task
    attr_accessor :content

    def initialize(name, content, difficulty, description = '')
        @content = content
        @difficulty = difficulty
        super(name, description)
    end

    def to_s
        "#{super}, content: #{@content}"
    end
end
test = FeatureRequest.new('test', 'feature request', 'hard')
puts test.to_s
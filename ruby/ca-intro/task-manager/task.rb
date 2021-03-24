# Superclass
class Task
    @id = 0 # Class instance variable, will not be passed to created objects of the class
    @object_count = 0
    def self.id
        @id
    end

    def self.next_id # iterate id number and return to the calling function
        @id += 1
        @id
    end

    def self.object_count=(value)
        @object_count = value
    end

    def self.object_count
        @object_count
    end

    attr_accessor :id, :name, :description

    def initialize(name, description = "")
        Task.object_count += 1
        @id = Task.next_id
        @name = name
        @description = description
    end

    def to_s
        "#{id}: #{name}"
    end
end

=begin

task base class / Superclass
    - id
    - name
    - description
bugfix << Task
    - File
    - Severity

feature_request << Task
    - componant
    - difficulty

=end

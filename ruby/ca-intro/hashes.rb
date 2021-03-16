# Specify the index, rather than allocating numbers.
# Similar to a dictionary file
# There is a key value pair for each item.

hash = {}
{}

hash = {name: 'daniel'}
{:name=>"daniel"}


hash = {name: 'Harrison', age: 27, hobby: ['coding', 'coffee', 'golf','zelda']}
{:name=>"Harrison", :age=>27, :hobby=>["coding", "coffee", "golf", "zelda"]}

hash[:hobby]
["coding", "coffee", "golf", "zelda"]

hash[:hobby][1]
"coffee"

hash[:profession] = 'Grand Master Software Engineer'
hash
{:name=>"Harrison", :age=>27, :hobby=>["coding", "coffee", "golf", "zelda"], :profession=>"Grand Master Software Engineer"}
hash[:age] = 29
29
hash
{:name=>"Harrison", :age=>29, :hobby=>["coding", "coffee", "golf", "zelda"], :profession=>"Grand Master Software Engineer"}
hash.delete(:age)
29
hash
{:name=>"Harrison", :hobby=>["coding", "coffee", "golf", "zelda"], :profession=>"Grand Master Software Engineer"}
hash[:hobby].delete('golf')
"golf"
hash
{:name=>"Harrison", :hobby=>["coding", "coffee", "zelda"], :profession=>"Grand Master Software Engineer"}


# Methods
hash.keys              # Returns all keys
hash.include?(:age)    # Return false
hash.include?(:name)   # Return True
hash.key?():name)      # Return True
hash.size              # Alias of .length


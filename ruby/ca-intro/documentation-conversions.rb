# Simple conversions

.to_i # To int
.to_f # To float
.to_s # To string

"123-abc".to_i    # = 123
"abc".to_i        # =   0
Integer("123")    # 123
Integer("123abc") # ArgumentError: invalid value for Integer(): "123abc"

25.to_s                    # "25"
(25.5).to_s                # "25.5"
["Sammy", "Shark"].to_s    # "[\"Sammy\", \"Shark\"]"

# String to Array

"one two three".split   # ["one", "two", "three"]

# symbols to strings

:language.to_s   # "language"
string = :first_name.to_s
string = string.gsub("_"," ").capitalize

#strings to symbols

"first_name".to_sym   # :first_name
string = "First name"
# replace spaces with underscores and convert to lowercase
string = string.gsub(" ","_").downcase
# Convert to symbol
symbol = string.to_sym
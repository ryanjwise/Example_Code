sharks = ['hammerhead', 'great white', 'dogfish', 'frilled', 'bullhead', 'requiem']

# transform each entry in the array to an HTML entity, with leading spaces and a newline.
listitems = sharks.map{ |shark| "  <li>#{shark}</li>\n"}

# Print the opening <ul>, then print the array of list items
print "<ul>\n#{listitems.join}</ul>"
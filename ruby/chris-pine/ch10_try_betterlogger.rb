$nestingdepth = 0
$indentdepth = 2

def log(description, &block)
  puts "Started #{description}".prepend(" " * $nestingdepth)
  $nestingdepth += $indentdepth
  value = block.call
  $nestingdepth -= $indentdepth
  puts "finished #{description} block with return value: #{value}".prepend(" " * $nestingdepth)
end
x = 0
n = 0

log "x+n" do 
  log "x" do
    x = 3+5
  end
  log "n" do
    n = 16/4
  end
  x+n
end

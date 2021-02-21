def log(description, &block)
  puts "Started #{description}"
  value = block.call
  puts "finished #{description} block with return value: #{value}"
end

log "x+n" do 
  x = log "x" do
    3+5
  end
  n = log "n" do
    16/4
  end
end

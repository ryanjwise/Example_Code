def grandfather_clock(&block)
  (Time.now.hour + 1).times do
    block.call
  end
end

grandfather_clock do
  puts 'DONG!'
end

reply = ""
bye_count = 0

puts "HELLO, HOW ARE YOU?"

while bye_count != 3
    reply = gets.chomp
    if reply != "BYE"
        if reply.upcase == reply
            year = rand(1930..1950).to_s
            puts "  NO, NOT SINCE #{year}!"
        else
            puts "  HUH?! SPEAK UP, SONNY!"
        end
    end

    if reply == "BYE"
        bye_count += 1
        if bye_count == 3
            puts "  ALRIGHT THEN, LEAVE ME HERE..."
        else    
            puts "  SORRY?! I DIDN'T HEAR THAT, SONNY!"
        end
    else
        bye_count = 0
    end

end
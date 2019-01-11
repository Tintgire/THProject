def say_hello


puts "bonjour #{ask_first_name}"

end



def ask_first_name
puts "quel est ton prénom?"
first_name = gets.chomp

end


say_hello
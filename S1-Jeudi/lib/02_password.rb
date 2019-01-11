def signup

puts"définie ton mot de passe"
mdpsignup = gets.chomp
return mdpsignup

end

def login

puts"quel est ton mot de passe?"

mdplogin = gets.chomp

return mdplogin

end

def perform

a = signup
b = login
while a != b
 	puts "Mot de passe incorrect, réessayez"
 	b = login
 	end
 	welcomscreen
end

def welcomscreen

puts"Bienvenue, tu as accès désormais aux textos très chauds de Hugo le coquin"

end

perform

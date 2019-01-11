def half_pyramid
ary = []

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

nb = gets.chomp.to_i

(nb+1).times do |i|

			(nb-i).times do |i|
						print (" ")
						end
 						i.times do |i| 
            		    print "#"	    
        				
        	end
puts ""
end
end

def full_pyramid
	ary = []

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

nb = gets.chomp.to_i

i = nb
j = 1
while i > 0

			(i-1).times do 
						print (" ")
						end
 						(j).times do
            		    print "#"
            			end
            (i-1).times do
            			print(" ")		    
        				end
        	
       i -= 1 
       j += 2

       puts ""
       puts ""
       end 	


end



def wtf_pyramid

puts "Salut, bienvenue dans ma super pyramide ! Combien d'étages veux-tu ?"

nb = gets.chomp.to_i

if nb.odd?

	i = (nb/2)+1
	j = 1
	while i > 0

				(i-1).times do 
							print (" ")
							end
	 						(j).times do
	            		    print "#"
	            			end
	            (i-1).times do
	            			print(" ")		    
	        				end
	        	
	       i -= 1 
	       j += 2

	       puts ""
	       puts ""
	end 	


	i = 1		#premier indice compteur
	j = nb-1 	#deuxième indice compteur

	while i <= nb/2 

				(i).times do 
							print (" ")
							end
	 						(j-1).times do
	            		    print "#"
	            			end
	            (i).times do
	            			print(" ")		    
	        				end
	        	
	       i += 1 
	       j -= 2

	       puts ""
	       puts ""
	 end 	

	else 
		puts "Va plutôt faire une balade"
end

end

wtf_pyramid
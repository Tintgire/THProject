def echo(a)
	a
end

def shout(a)
	a.upcase
end

def repeat(a,*b)
	b = [2] if b==[]
	rep = a
	(b[0]-1).times	do |i|
		rep += " " + a
	end
	return rep 
end

def start_of_word(word,nb)
	word[0...nb]
end

def first_word(sentence)
		sentence.split[0]
end

def titleize(sentence)
	sentence = sentence.split.map.with_index do|word,i| 
		if i == 0
			word = word.capitalize
		elsif word != "and" && word != "the"	
			word = word.capitalize
		else 
			word
		end
	end
	return sentence.join(" ")
end


def translate(sentence)
	sentence = sentence.split.map { |word|
		if word[0]=~ /[aeiouy]/i
			word + "ay"
		elsif word[0..1] == "qu"
			word = word + word[0] + word[1] + "ay"
			word[2..-1]
		elsif word[1]=~ /[aeiouy]/i
			word = word + word[0] + "ay"
			word[1..-1]
		elsif word[1..2] == "qu"
			word = word + word[0] + word[1] + word[2] + "ay"
			word[3..-1]
		elsif word[2]=~ /[^aeiouy]/i
			word = word + word[0] + word[1] + word[2] + "ay"
			word[3..-1]
		elsif word[2]=~ /[aeiouy]/i
			word = word + word[0] + word[1] + "ay"
			word[2..-1]
		end
	}.join(" ")
end

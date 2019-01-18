def caesar_cipher(string, key)

  s = string.split(//)
  i = 0
  while string[i]
    s[i] = s[i].ord
    if s[i] < 65 || s[i] > 90 && s[i] < 97

    else
      s[i] = s[i] + key
	    if s[i] > 122 || s[i] > 90 && s[i] < 97
	      s[i] = s[i] - 26
	    end
	  end
	  s[i] = s[i].chr
      i = i + 1
  end
  puts s.join
end

puts caesar_cipher("ZzYy", 1)


# caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

def caesar_cipher(string, shift=5)
	alphabet   = ("a".."z").to_a
								
	new_string = string.split("").map do |l|
		if !!(l =~ /[a-zA-z]/)
			upcase     = (l.upcase == l) 		#true = uppercase
			new_index  = (alphabet.index(l.downcase) + shift)
			new_index -= alphabet.length if (new_index > alphabet.length)
			char 			 = alphabet[new_index]
			l = upcase ? char.upcase : char
		end
		l
	end
	return new_string.join
end

puts caesar_cipher("What a string!", 5)
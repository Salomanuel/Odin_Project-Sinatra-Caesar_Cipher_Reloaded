# caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

def caesar_cipher(string, shift)
	alphabet   = ("a".."z").to_a
								
	new_string = string.split("").map do |l|
		upcase     = (l.upcase == l) #true = uppercase
		new_index  = (alphabet.index(l.downcase) + shift)
		new_index -= alphabet.length if (new_index > alphabet.length)
		alphabet[new_index]
	end

	return new_string.join
end

puts caesar_cipher("what", 5)
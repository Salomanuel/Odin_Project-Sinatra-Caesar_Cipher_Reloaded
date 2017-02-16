# caesar_cipher("What a string!", 5)
# => "Bmfy f xywnsl!"

def caesar_cipher(string, shift)
	downcase   = ("a".."z").to_a
	upcase     = ("A".."Z").to_a
	up_or_down = false						#true = uppercase
	
	new_string = string.split("").map do |l|
		index     = downcase.index(l)
		if (index + shift > downcase.length)
			new_index = index + shift - downcase.length
		else
			new_index = index + shift
		end
		new_char  = downcase[new_index]
	end

	return new_string.join
end

puts caesar_cipher("what", 5)
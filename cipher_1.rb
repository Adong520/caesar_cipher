


def caesar_cipher (string, factor)
	arry_str = string.scan(/./)
	arry_str.collect! {|char| cipher_ascii(char,factor)}
	puts arry_str.join




end


def cipher_ascii(char, factor)
	ascii = char.ord

	case ascii
	when 65..90  # 'A' to 'Z'
		
		ascii += factor

		ascii += 26 if ascii < 65

		ascii -= 26 if ascii > 90

		

	when 97..122 # 'a' to 'z'
		
		ascii += factor
		ascii += 26 if ascii < 97

		ascii -= 26 if ascii > 122

		

	else 
		#return error message
	end
	return ascii.chr

end

caesar_cipher("This is TEST Caesar_CIPher", 10)

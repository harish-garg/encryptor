class Encryptor
=begin	
	def cipher
		{ 'a' => 'n', 'b' => 'o', 'c' => 'p', 'd' => 'q',
			'e' => 'r', 'f' => 's', 'g' => 't', 'h' => 'u',
		  'i' => 'v', 'j' => 'w', 'k' => 'x', 'l' => 'y',
      'm' => 'z', 'n' => 'a', 'o' => 'b', 'p' => 'c',
      'q' => 'd', 'r' => 'e', 's' => 'f', 't' => 'g',
      'u' => 'h', 'v' => 'i', 'w' => 'j', 'x' => 'k',
      'y' => 'l', 'z' => 'm'}
	end	
=end
	def cipher(rotation)
		chars = (" ".."z").to_a
		rotated_chars = chars.rotate(rotation)
		Hash[chars.zip(rotated_chars)]
	end

	def reverse_cipher(rotation)
		chars = (" ".."z").to_a
		rotated_chars = chars.rotate(rotation)
		Hash[rotated_chars.zip(chars)]
	end
	
	def encrypt_letter(letter, rotation)
		cipher_for_rotation = cipher(rotation)
		cipher_for_rotation[letter]
	end
	
	def decrypt_letter(letter, rotation)
		cipher_for_rotation = reverse_cipher(rotation)
		cipher_for_rotation[letter]
	end
	
	def encrypt(s, rotation)
	 	letters = s.split("")
  	results = letters.collect do |letter|
  		encrypt_letter(letter, rotation)	
  	end	
  	results.join	
	end
	
	def decrypt(s, rotation)
	 	letters = s.split("")
  	results = letters.collect do |letter|
  		decrypt_letter(letter, rotation)	
  	end	
  	results.join	
	end
	
end

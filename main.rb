class String
	def encrypt key_number
		encryptedCodes = self.split("").map{|c| c.ord + key_number}
		encryptedString = encryptedCodes.pack("U" * encryptedCodes.length)
	end

	def decrypt key_number
		plainCodes = self.split("").map{|c| c.ord - key_number}
		plainString = plainCodes.pack("U" * plainCodes.length)
	end
end

plainString = "大家好 我叫蔡至勇"
encryptedString = plainString.encrypt 1234
puts encryptedString

decryptedString = encryptedString.decrypt 1234
puts(decryptedString)
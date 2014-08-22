plainString = "大家好 我叫蔡至勇"
magicNumber = 1234

encryptedCodes = plainString.split("").map{|c| c.ord + magicNumber}

plainCodes = encryptedCodes.map{|c| c-magicNumber}

plainString = plainCodes.pack("U" * plainCodes.length)

p plainString
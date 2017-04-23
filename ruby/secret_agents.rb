#pair programming with Kevin Cross

def encrypt(word)
  answer = []
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  if alphabet[alphabet.index(word[index]) +1] == nil
    alphabet[alphabet.index(word[index]) +1] = "a"
  end
  while index < word.length
    answer.push(alphabet[alphabet.index(word[index]) +1])
    index += 1
  end
  word = answer.join("")
  puts word
  return word
end

##Decrypt method:
##create a list containing the alphabet
##have the while loop add 1 to index for each iteration
##terminate the while loop once the index length is equal to word.length

def decrypt(word)
  answer = []
  alphabet = "abcdefghijklmnopqrstuvwxyz"
  index = 0
  while index < word.length
    answer.push(alphabet[alphabet.index(word[index]) -1])
    index += 1
  end
  word = answer.join("")
  puts word
  return word
end

##encrypt("abc")
##encrypt("zed")
##decrypt("bcd")
##decrypt("afe")
##decrypt(encrypt("swordfish"))

##The decrypt(encrypt("swordfish")) worked because ruby completed the methods in order. First it executed the inside function, encrypting "swordfish", and then it gave the result to the outside function, which then decrypted it.

def interface
  puts "Would you like to decrypt or encrypt a password? Please answer 'Encrypt' or 'Decrypt'"
  decryptOrEncrypt = gets.chomp
  if decryptOrEncrypt == "Encrypt"
    puts "What password would you like to encrypt?"
    word = gets.chomp
    encrypt(word)
  elsif decryptOrEncrypt == "Decrypt"
    puts "What password would you like to decrypt?"
    word = gets.chomp
    decrypt(word)
  end
end

interface
  
  
  
  
  



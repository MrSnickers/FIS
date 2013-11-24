secret = "Uzo and Gustavo peed in bed until the age of 12"

# It reverses the secret 
#printing it results: 1 fo ega eht litnu deb ni deep ovatsuG dna ozU
reverse_secret = secret.reverse

#This method substitute the white spaces with the last char of the secrets string reversed
#prints 1UfoUegaUehtUlitnuUdebUniUdeepUovatsuGUdnaUozU
gsub_reverse_secret = reverse_secret.gsub(" ", reverse_secret[-1])

puts gsub_reverse_secret
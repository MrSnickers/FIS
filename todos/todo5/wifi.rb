def encode(password)
pass_as_string = password.to_s
password_array = pass_as_string.split("_")
new_password_array = []
new_password_array[0] = password.array.last
new_password_array[3] = password.array.first
new_password_array[1] = password.array[1]
password_array.compact!
joined_password = new_password_array.join("_")
joined_password.gsub!("e", "blake")
joined_password.gsub!(" ", "ashely")
joined_password
end

password = "intblakernblaketsashelythblakeashelyall"

def decoder(password)
pass_as_string = password.to_s
pass_as_string.gsub!("blake", "e")
pass_as_string.gsub!("ashely", " ")
password_array = pass_as_string.split(" ")
new_password_array = []
new_password_array[0] = password_array.last
new_password_array[2] = password_array.first
new_password_array[1] = password_array[1]
joined_password = new_password_array.join("_")
final = joined_password.to_sym

end

decoder(password)
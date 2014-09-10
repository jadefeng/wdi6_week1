#Array - store things individually
cart = [ ]

#Hashes - store things in pairs
dict = Hash.new{}
dict['hasten'] = 'to go quickly'	#Linking the key 'hasten' to its definition value
dict['blunt'] = 'not sharp'
dict['water'] = 'the essence of wetness'
puts dict 			#Look at the new dictionary Hash!

# Now we can call on the definitions
p dict['water'] 	#This calls on the definition of 'water'

# Now lets look for the keys only!
p dict.keys 	# Returns it keys as an array, because it is an array of values
p dict.values	# Returns all the values as an array

julia = Hash.new
julia['favourite things'] = 'rainbows', 'kittens'	# You can attach many variables to one key to make a more detailed database
julia['least favourite things'] = 'spiders'
p julia
p julia.invert	# This is the inversion - turning the values into keys and vice versa

sam = Hash.new
sam['favourite color'] = 'blue'
sam['hair color'] = 'blue'
sam['favourite author'] = 'John'
sam['name of dog'] = 'John'
sam['best friend'] = 'Daniel'

p sam
p sam.invert 	# Because of shared variables (blue, john), the invert will only show the last key that was referenced 



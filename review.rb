bananas = 75
surname = "Marc"

fullname = "Sarah #{surname}"
puts bananas

# Both of these methods for if statements will work
if 2 + 2 == 4 		# This is true!
	puts "Math is okay"
end
	
puts "Maths is okay" if 2+2 == 4 	# One-liner version of an if-statement

# Also works for unless 
unless 2 + 2 == 5
	puts "Maths is still okay"
end

puts "Maths is still okay" unless 2+2 == 5	#One-liner unless

# Lets try for while statements!
counter = 10
while counter >= 0
	puts "#{counter}..."
	counter -= 1 				# If this isnt' here, it creates an infinite loop 
end
puts "Blast off!"


# Can do it with an until 
counter = 10
until counter == 0
	puts "#{counter} ... "
	counter -= 1
end

puts "Blast off!"
puts counter

# Functions!
def say_hello(name) 			# Needs to include the arguments here
	puts "Hello there, #{name}"
end

say_hello("Mr Orange")			# Calling the function!


def add10(n)
	n + 10
end

add10(55)
result = add10(100)				# Can store result of function in a variable
puts result

puts add10( add10( add10(55))) 		# Can pass a function within other functions!

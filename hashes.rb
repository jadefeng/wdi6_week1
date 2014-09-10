# Load this file into pry automatically from the terminal by 'ruby hashes.rb'
require 'pry'

# Per entity
groucho = { 					# the :XX converts it into a SYMBOL
	:instrument => 'guitar', 	#the 'hash rocket' points the key to value, 
	:vices => 'cigars',
	:YOB => 1890
}

harpo = {
	:instrument => 'harp',
	:vices => 'mutism',
	:YOB => 1888

}

chico = {
	:instrument => 'piano',
	:vices => 'women',
	:YOB => 1887
}

# Per relationship
instruments = {
	:groucho => 'guitar',
	:harpo => 'harp',
	:chico => 'piano'
}

vices = {
	:groucho => 'cigars',
	:harpo => 'mutism',
	:chico => 'women'
}

YOB = {
	:groucho => 1890,
	:harpo =>  1888,
	:chico => 1887	
}

bros = ['groucho', 'chico', 'harpo']

# Symbol - avoids you having to take up extra memory with the same variable
"instrument".object_id 	# each one of these is considered as its own string
"instrument".object_id 	# "instrument" here will be a new string. It will not recall the hash array
:instrument 	#This is a SYMBOL! It's like a string, but it will always be considered as the same object!

binding.pry 
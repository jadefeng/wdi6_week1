#Arrays

array = [1, 2, 3, 4, 5]
		# array[0], array[1], array[2], array[3] ... array[array.length - 1]
		# array[-5], array[-4], array[-3], array[-2], array[-1] <- this is the last item!
		# Can reference the last item using array[array.length - 1] = array[-1]

array.class 	# output will be "Array"
array[0].class	# will be Fixnum

#To finsh all the possible methods for arrays >> array.methods
# Online reference: http://www.ruby-doc.org/core-2.1.2/Array.html
#array.me 		# will come up with potential list of methods you can use starting with 'me'


# You can force entry into arrays
array[5] = "hello"		# Forces the 6th item in the array to be "hello"
array.push "bonjour"	# This can also help you with doing this
array.push "ni hao"

array[100] = "ciao"	# this can push the 99th item to be "ciao", and the all other empty fixnums would be 'NIL'
array.pop 			# This removes the last element in an array 

array.shuffle		# can shuffle it around at random. Will not be permanent as there is no !
array.shuffle!		# permanent change in shuffle!

# can replace two items - e.g. swapping the first element with the second around 
nums = [1, 2, 3, 4, 5]
temp = nums[0]		# stores the first element in temp variable
nums[0] = nums[1]	# copies the 2nd variable into the 1st
nums[1] = temp		# stores the temp variable into the 2nd element now

# Other ways to push elements
array << "konichiwa"	# faster way to push it forward
array

array << "yellow" << "red" << "blue" 	# can push more elements forward faster
array

# More experimentation!
strs = ['Welcome', 'To']
strs << 'WDI'					# pushes WDI onto the strings
strs.shift 						# removes the first element
strs 							# look at the array now without the first element!
strs.unshift ["Say", "Hello"]	# Adds a new array within strs array as an element. This is now strs[0]
strs[0][1]						# pulls out the first element of the array that is strs[0]
strs[0].unshift "Please"		# Adds "Please" into the array that is strs[0]
strs.flatten					# Looks at the array if it pushes down all the arrays into one nice array. Unless saved into a new variable name
strs.flatten!					# Permanently changes the strs array into a flattened version
strs.reverse					# Reverses the array. Obviously.

# Make an array with words 
arraytest = %w(hello baby girl)			#make an array of strings
arraytest2 = ["hello", "baby", "girl"]	#obviously another way to do this
arraytestnum = %w(12 13 14).map &:to_i	#make an array of characters by turning 'words' into 'integers'

bros = ["Groucho", "Harpo", "Sexy", "Baby"]
bros.delete_at 2		#will delete "Sexy" from the array

# Generate an array
1..100 			#Generates an range of things from 1 to 100
(1..100).to_a	#Actually converts that range into an array
('a'..'z').to_a	#Does the same thing but for the alphabet

# Playing with lottery numbers
lottery = [47851 , 123, 35624, 12316324, 123875, 4563452]
lottery.shuffle.first 		#Shuffes the lottery numbers and finds the first element
lottery.shuffle[0]			#Does the same thing
lottery.sample				#Picks an element at random from the array 
lottery.sample 2 			#Picks 2 elements at random from the array

#What to have for lunch?
%w{KFC Sushi Sandwich}.sample 		# Easy toss-the-coin :P
lunch = %w{KFC Maccas Sushi Sushi Sushi}
lunch.uniq 						# Will give a new array without the repeating 'Sushi'
lunch.uniq!						# Lets make that change permanent ;)
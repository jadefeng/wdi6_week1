puts "1. Create an array of the days of the week"
days_of_the_week = %w{Monday Tuesday Wednesday Thursday Friday Saturday Sunday}
p days_of_the_week 		# p is shortform for 'pretty print', but keeping it within the array format

puts "2. Remove Sunday from the last postion and move it to the first position. Use array methods."
days_of_the_week.pop
days_of_the_week = days_of_the_week.unshift "Sunday"
# In one line: days_of_the_week.unshift days_of_the_week.pop

puts days_of_the_week

puts "3. Create a new array of the days of the week"
weekends = [days_of_the_week.last, days_of_the_week.first]	# Calling the last and the first element in the array
weekdays = [days_of_the_week[1..5]]
new_days_of_the_week = [weekdays, weekends]
puts new_days_of_the_week

puts "4. Remove either the weekdays or the weekends"
puts "a. Remove weekends"
only_weekdays = new_days_of_the_week.shift
puts only_weekdays

puts "b. Remove weekdays"
only_weekends = new_days_of_the_week.pop
puts only_weekends

puts "5. Sort the remaining days alphabetically"
sorted_weekends = only_weekends.flatten.sort 	# flatten the array so it will sort it properly
sorted_weekdays = only_weekdays.flatten.sort

puts "a. Sort the weekends"
puts sorted_weekends.join ' ' 	# Another way to put out an array, seperating elements with a space ' ' 
puts "b. Sort the weekdays"
puts sorted_weekdays.join ' '

puts "------- BONUS STUFF ------"
#Can split up a string of words
random_sentence = "I'm a, little teapot, short and, stout"
random_array = random_sentence.split(", ")		# Split the strong above on a space
puts random_array

## Let's learn about Methods!
#[].methods 				# Use this when you want to find all the methods you can use on an array
#[].methods.sort 			# Now see them alphabetically
#[].methods.join ' and'		# Now rejoin them with ' and'!!

ls 			# Can type this to find all the variables that exist
cd lottery	# Changed directory into lottery variable
	ls 		# shows things the methods that are inside the array that we just cd'ed into i.e. lottery
cd .. 		# Goes back to the main level



# Enumerables allow you to pass in a block of code to be repeatedly executed

nums = [5, 3, 12]

# Need to use a block, which start with 'do' and ends with 'end'
nums.each do |n|	# code within this block will be repeated for each nums!
	puts "Current number is #{ n }!"
end

# If you want to test something in each element of an array, you have to run a test through each number
	# i.e. you can run 12.even, but not array.even. Hence you need to select each individually
evens = nums.select do |n|	# select numbers which pass a particular test
			n.even? 		# thus, if it is even, the number will be SELECTED
		end

p evens

# We can do this for odds too!
odds = 	nums.select do |n|
			n.odd?
		end

p odds

# Let's try this with printing this out individually!
p names = %w{Jade V Andrew Lawrence}.to_a
names.each do |who|
	puts "#{who} is doing WDI6!"
end




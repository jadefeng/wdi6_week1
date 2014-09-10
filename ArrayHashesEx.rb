# require 'pry'

# A
a = ["Anil", "Erik", "Jonathan"]

puts "1. Return the string Erik"
p a[1]

puts "2. Add my name"
p a << "Jade"			# Easy way to add to an array with <<

# B 
h = {0 => "Zero", 1 => "One", :two => "Two", "two" => 2}

puts "1. Return string 'One'"
p h[1]

puts "2. Return string 'Two'"
p h[:two]

puts "3. Return number 2'"
p h["two"]

puts "4. Add to the hash"
h[3] = "Three"
p h

puts "5. Add to the hash"
h[:four] = 4
p h

# C 
is = {true => "It's true!", false => "It's false"}

puts "1. What is the return value of is[2 + 2 == 4]?"
p is[2+2 == 4]

puts "2. What is the return value of is['Erik' == 'Jonathan']?"
p is["Erik" == "Jonathan"]

puts "3. What is the return value of is[9 > 10]?"
p is[9 > 10]

puts "4. What is the return value of is[0]?"
p is[0]

puts "5. What is the return value of is['Erik']?"
p is["Erik"]

# D 

users = {
  "Jonathan" => {
    :twitter => "tronathan",
    :favorite_numbers => [12, 42, 75],
  },
  "Erik" => {
    :twitter => "sferik",
    :favorite_numbers => [8, 12, 24],
  },
  "Anil" => {
    :twitter => "bridgpal",
    :favorite_numbers => [12, 14, 85],
  },
}

puts "1. How would you access Jonathan's Twitter handle (i.e. the string 'tronathan')?"
p users["Jonathan"][:twitter]

puts "2. How would you add the number 7 to Erik's favorite numbers?"
users["Erik"][:favorite_numbers].push 7
p users["Erik"]

puts "3. How would you add yourself to the users hash?"
unless users["Jade"] != nil				# Checking that "Jade" is not already in the hash
	users["Jade"] = {
		:twitter => "fengjade",
		:favorite_numbers => [7, 21]
	}
	p users["Jade"]
end

puts "The updated Users hash is: "
p users

puts "4. How would you return the array of Erik's favorite numbers?"
p users["Erik"][:favorite_numbers]

puts "5. How would you return the smallest of Erik's favorite numbers?"
erik_smallest = users["Erik"][:favorite_numbers].min 	#.min & .max & .minmax are all possible options
p erik_smallest

puts "6. How would you return an array of Anil's favorite numbers that are also even?"
anil_numbers = users["Anil"][:favorite_numbers].flatten
anil_even = anil_numbers.select {|x| x.even? } 
p anil_even


puts "7. How would you return an array of the favorite numbers common to all users?"

jonathan_numbers = users["Jonathan"][:favorite_numbers]
erik_numbers = users["Erik"][:favorite_numbers]
anil_numbers = users["Anil"][:favorite_numbers]
jade_numbers = users["Jade"][:favorite_numbers]
common_num = (jonathan_numbers & erik_numbers & anil_numbers & jade_numbers)

unless common_num.length > 0
	puts "There are no numbers common to all the arrays"
else
	p common_num
end


puts "8. How would you return an array containing all users' favorite numbers, sorted, and excluding duplicates?"
fav_numbers = [ ]
fav_numbers << jonathan_numbers << erik_numbers << anil_numbers << jade_numbers

num_array = fav_numbers.flatten.uniq.sort
p num_array

# binding.pry
puts "Andrew's Challenge"

fav_num_2 = (users["Jonathan"][:favorite_numbers] & users["Erik"][:favorite_numbers] & users["Anil"][:favorite_numbers] & users["Jade"][:favorite_numbers])
p common_num_2 = fav_num_2.flatten.sort.uniq

unless common_num_2.length > 0
	puts "There are no numbers common to all the arrays, Andrew"
else
	puts "The common numbers are" 
	print common_num_2
end
mta_subway = { 
	"n" => ["times square", "34th", "28th", "23rd", "union square", "8th"],
	"l" => ["8th", "6th", "union square", "3rd", "1st"],
	"6" => ["grand central", "33rd", "28th", "23rd", "union square", "astor place"]
}

puts "The subway lines avaliable are: "
puts "-- Line N: "
print line_n = mta_subway["n"]
puts " "
puts "-- Line L: "
print line_l = mta_subway["l"]
puts " "
puts "-- Line 6: "
print line_6 = mta_subway["6"]
puts " "
# What is your commute? 

=begin
def menu_root
	puts "1. Basic Calculator"
	puts "2. Advanced Calculator"
	puts "q. Quit"
	print "Which calculator do you want? "
end

def read_calculator_type
	menu_root
	gets.chomp
end

choose_calc = read_calculator_type
puts "You selected Calculator #{choose_calc}!"
=end

puts "What line are you going to catch? N/L/6"
board_l = gets.chomp.downcase.to_s
board_line = mta_subway[board_l]

puts "Your stop options are: " 
print mta_subway[board_l]
puts " "
puts "What station are you boarding from?"
board_st = gets.chomp.downcase.to_s

puts "What line are you disembarking? N/L/6"
disemb_l = gets.chomp.downcase.to_s
disemb_line = mta_subway[disemb_l]

puts "Your stop options are: "
print mta_subway[disemb_l]
puts " "
puts "What station are you disembarking from?"
disemb_st = gets.chomp.downcase.to_s

puts "You are boarding at Line #{board_l.upcase} Station #{board_st.upcase}."
puts "You are disembarking at Line #{disemb_l.upcase} Station #{disemb_st.upcase}."

if 		board_l == disemb_l && board_st == disemb_st
			puts "Why are you catching the subway? You're already there!"

elsif	board_l == disemb_l && board_st != disemb_st
			# No change in stops
			no_change_stops_between = ( board_line.index(board_st) - disemb_line.index(disemb_st) )
			puts "There are #{no_change_stops_between.abs} stops to pass on your line."

			puts "The stops you will be travelling through are: "			#The names of the stops
			if no_change_stops_between >= 0 	
				p board_line[disemb_line.index(disemb_st) .. (board_line.index(board_st))]	# if we are going backwards on the line
			else
				p board_line.reverse[disemb_line.reverse.index(disemb_st) .. (board_line.reverse.index(board_st))] 	#pull out if going forwards
			end

else 		# There is a change in stops 
			first_line_changeover = ( board_line.index(board_st) - board_line.index("union square") )
			puts "There are #{first_line_changeover.abs} stops to pass on your first line."
			second_line_changeover = ( disemb_line.index("union square") - disemb_line.index(disemb_st) )
			puts "There are #{second_line_changeover.abs} stops to pass on your second line."
			puts "The total number of stops will be #{ first_line_changeover.abs + second_line_changeover.abs }."

			puts "The stops you will be travelling through on the first line are: "
			if first_line_changeover >= 0 	
				p board_line[board_line.index("union square") .. (board_line.index(board_st))]	# if we are going backwards on the line
			else
				p board_line.reverse[board_line.reverse.index("union square") .. (board_line.reverse.index(board_st))] 	#pull out if going forwards
			end

			puts "The stops you will be travelling through on the second line are: "
			if second_line_changeover >= 0 	
				p disemb_line[disemb_line.index(disemb_st) .. (disemb_line.index("union square"))]	# if we are going backwards on the line
			else
				p disemb_line.reverse[disemb_line.reverse.index(disemb_st) .. (disemb_line.reverse.index("union square"))] 	#pull out if going forwards
			end

end 
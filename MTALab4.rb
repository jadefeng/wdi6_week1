mta_subway = { 
	"n" => ["times square", "34th", "28th", "23rd", "union square", "8th"],
	"l" => ["8th", "6th", "union square", "3rd", "1st"],
	"6" => ["grand central", "33rd", "28th", "23rd", "union square", "astor place"]
}

# Options of subway lines
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

####################### What is your commute? #######################

########## BOARDING LINES ##########
def menu
	puts "What line are you going to catch? N, L or 6?"
end

def catch_subway
	menu
	gets.chomp.downcase.to_s
end 

board_l = catch_subway
board_line = mta_subway[board_l]

########## BOARDING STATION ##########
### Need to get this repeated when the code is replayed
#def options_board
	puts "Your stop options are: " 
	print mta_subway[board_l]
#end

def menu2
	puts "What station are you boarding from?"
end

def catch_subway2
	#options_board
	menu2
	gets.chomp.downcase.to_s
end

board_st = catch_subway2

########## DISEMBARKMENT LINES ##########
def menu3
	puts "What line are you disembarking? N, L or 6?"
end
def catch_subway3
	menu3
	gets.chomp.downcase.to_s
end

disemb_l = catch_subway3
disemb_line = mta_subway[disemb_l]

########## DISEMBARKMENT LINES ##########
### Need to get this repeated when the code is replayed

#def options_disemb
	puts "Your stop options are: "
	print mta_subway[disemb_l]
#end

def menu4		
	puts "What station are you disembarking from?"
end
def catch_subway4
	#options_disemb(disemb_l)
	menu4
	gets.chomp.downcase.to_s
end
disemb_st = catch_subway4

####################### This is your commute! #######################

puts "You are boarding at Line #{board_l.upcase} Station #{board_st.upcase}."
puts "You are disembarking at Line #{disemb_l.upcase} Station #{disemb_st.upcase}."

####################### What is your commute? #######################
potential_lines = ["n", "l", "6"]

if (potential_lines.include? board_l ) && (potential_lines.include? disemb_l )

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

	elsif 		(board_st == 'union square') && board_l !=disemb_l
				puts "Why do you have to change lines from Union Square? That's silly!"

	elsif 		(disemb_st == 'union square') && board_l !=disemb_l
				puts "Why do you have to change lines at Union Square? That's silly!"

	else  		 		
				# There is a change in stops 
				first_line_changeover = ( board_line.index(board_st) - board_line.index("union square") )
				puts "There are #{first_line_changeover.abs} stops to pass on your first line."
				second_line_changeover = ( disemb_line.index("union square") - disemb_line.index(disemb_st) )
				puts "There are #{second_line_changeover.abs} stops to pass on your second line."
				puts "The total number of stops will be #{ first_line_changeover.abs + second_line_changeover.abs }."

				#The stops you will be travelling through on the first line are: 
				if first_line_changeover >= 0 	
					first_stops = board_line[board_line.index("union square") .. (board_line.index(board_st))].reverse	# if we are going backwards on the line
				else
					first_stops = board_line.reverse[board_line.reverse.index("union square") .. (board_line.reverse.index(board_st))].reverse 	#pull out if going forwards
				end

				#The stops you will be travelling through on the second line are: 
				if second_line_changeover >= 0 	
					second_stops = disemb_line[disemb_line.index(disemb_st) .. (disemb_line.index("union square"))].reverse	# if we are going backwards on the line
				else
					second_stops = disemb_line.reverse[disemb_line.reverse.index(disemb_st) .. (disemb_line.reverse.index("union square"))].reverse 	#pull out if going forwards
				end

				puts "The total stops you are travelling over, with a change at Union Square, are: "
				p [first_stops, second_stops].flatten.uniq
	 end

	puts "Enter Q if you want to quit. Or do you want to look for another commute?"
	go_again = gets.chomp.downcase
		
		if go_again == "q"
			then 
			puts "You just quit! Have a safe commute!"	
			Kernel.exit(0)
		else
			system("clear")
				board_l = catch_subway
				board_line = mta_subway[board_l]
				board_st = catch_subway2
				disemb_l = catch_subway3
				disemb_line = mta_subway[disemb_l]
				disemb_st = catch_subway4

		end
		
else
	puts "That isn't a real line! Your request for this line has been submitted to management!"

end


# Things Jade needs to incorporate:
	# Error statement if I don't put in a real line i.e. N, L or 6
	# Error statement if my station does not exist on my line
	# Repeated system will also offer list of possible stations after line is selected

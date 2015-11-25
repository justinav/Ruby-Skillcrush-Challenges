def get_number(birthdate)
	number = birthdate[0].to_i + birthdate[1].to_i + birthdate[2].to_i + birthdate[3].to_i + birthdate[4].to_i + birthdate[5].to_i + birthdate[6].to_i + birthdate[7].to_i + birthdate[8].to_i
	number = number.to_s
	number = number[0].to_i + number[1].to_i
	if number > 9 
		number = number.to_s
		number = number[0].to_i + number[1].to_i
	end

	return number
end

def get_message(birth_path_number)
	case birth_path_number 
		when 1
			puts "One is the leader. The number one indicates the ability to stand alone, and is a strong vibration. Ruled by the Sun."
		when 2
			puts "Two. This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
		when 3
			puts "Number Three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
		when 4
			puts "This is the worker. Practical, with a love of detail, Fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
		when 5
			puts "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
		when 6
			puts "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
		when 7
			puts "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
		when 8
			puts "This is the manager. Number Eight is a strong, successful, and material vibration. Ruled by Saturn."
		when 9
			puts "This is the teacher. Number Nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
		else
			puts "Oops. Your path number is not between 1-9."
	end
end

puts "What's your birthdate? Please enter it as so MMDDYYYY. Only include numbers, no symbols or words. Thanks!"
birthdate = gets

birth_path_number = get_number(birthdate)
message = get_message(birth_path_number)

puts message

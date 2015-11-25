i_love_you = "I love you"

forever = i_love_you.size
my_love = 0

puts "Are you my love? yes/no?"
are_you = gets.downcase.split.join(' ')

while (my_love <= forever)
	if (are_you == "yes")
		puts i_love_you
	else
		puts "I still love you."
	end
end
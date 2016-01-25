# CracklePop
# Write a program that prints the numbers from 1 to 100
# If the number is divisible by 3, print Crackle instead of the number
# If it's divisible by 5, print Pop
# If it's divisible by both 3 and 5, print CracklePop

i = 0
while i < 101
	if i%3==0 && i%5==0
		puts "CracklePop"
	elsif i%3==0
		puts "Crackle"
	elsif i%5==0
		puts "Pop"
	else
		puts i
	end
	i+=1
end
		
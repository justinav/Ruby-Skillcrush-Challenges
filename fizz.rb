# FizzBuzz
# Write a program that prints the numbers from 1 to 100
# For multiples of three, print “Fizz” instead of the number
# For multiples of five, print “Buzz” instead of the number
# For numbers which are multiples of both three and five, print “FizzBuzz” instead of the number

i = 0
while i < 101
	if i%3==0 && i%5==0
		puts "FizzBuzz"
	elsif i%3==0
		puts "Fizz"
	elsif i%5==0
		puts "Buzz"
	else
		puts i
	end
	i+=1
end
		
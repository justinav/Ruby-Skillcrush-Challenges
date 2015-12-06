# Magic 8 Ball Ruby App

$list = [
	"It is certain",
	"It is decidedly so",
	"Without a doubt",
	"Yes, definitely",
	"You may rely on it",
	"As I see it, yes",
	"Most likely",
	"Outlook good",
	"Yes",
	"Signs point to yes",
	"Reply hazy try again",
	"Ask again later",
	"Better not tell you now",
	"Cannot predict now",
	"Concentrate and ask again",
	"Don't count on it",
	"My reply is no",
	"My sources say no",
	"Outlook not so good",
	"Very doubtful"
]

def get_wisdom
	list = $list[rand($list.size)]
	puts "* #{list} *"
end


def ask
	puts "What would you like to ask the universe?"
	question = gets.chomp
	if (question.size > 0)
		get_wisdom
	end
	puts "Does the universe's answer satisfy you?\n Please enter y ask the same question again."
	$answer = gets.chomp
	$answer = $answer.downcase
end

def ask_again
	puts "Do you have anymore questions?\n Enter y to ask the same question again.\n Enter new to ask a new question.\n Enter n to stop."
	$answer = gets.chomp
	$answer = $answer.downcase
end

$list.each do |i|
	ask
	if ($answer == "y")
		get_wisdom
		ask_again
		if ($answer == "y")
			get_wisdom
			puts "Now it's time to ask a new question."
		elsif ($answer == "new")
			ask
		else
			break
		end
	elsif ($answer == "n")
		puts "Would you like to ask another question?\n Please enter y or n."
		$answer = gets.chomp
		if ($answer == "n")
			puts "Best of luck, friend."
			break
		end
	else
		puts "Sorry. You must type either y or n. Ask again."
	end
end
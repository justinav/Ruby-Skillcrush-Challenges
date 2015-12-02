# Magic 8 Ball Ruby App

require 'rubygems'
require 'twilio-ruby'
require 'nokogiri'
require 'open-uri'

account_sid = "ACef6d6b8cadbc304dd87446cd8c74e9ce"
auth_token = "27f26f6edaba8db88fdda4815ba64682"

@client = Twilio::REST::Client.new(account_sid, auth_token)

$doc = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/Magic_8-Ball#Possible_answers"))

def get_wisdom
	list = Array.new
	list = $doc.css('ol > li > span')
	list = list[0...-2]
	list = list[rand(list.size)]
	list = list.inner_html

	$message = @client.account.messages.create(
		:from => "+19737551549",
		:to => "+12018707500",
		:body => "* #{list} *"
		)
end

get_wisdom
puts "What would you like to ask the universe?"
question = gets.chomp
if (question.size > 0)
	puts $message.to
end

get_wisdom
puts "Does the universe's answer satisfy you? Ask again, y/n?"
answer = gets.chomp
puts $message.to if answer.downcase == "y"



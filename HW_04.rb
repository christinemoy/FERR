###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 04
#
# Purpose:
#
# Read the steps below and complete the exercises in this file. This Lab
# will help you to review the basics of Object-Oriented Programming that
# we learned in Lesson 04.
#
###############################################################################
#

puts "Welcome to the Secret Number Game!"
puts "Created by Christine Moy"

puts "What is your name?"
username = gets.strip

puts "Hi #{username}!"
puts "You have 3 guesses to guess the Secret Number between 1 and 10"

guesses_left = 3

puts "#{username}, you have #{guesses_left} guesses left"

set_of_numbers = [1,2,3,4,5,6,7,8,9,10]
secret_number = rand(10)+1
# secret_number = 5

messages = {:win=>"You Won", 
 		:lose=>"You lose, the correct number is the #{secret_number}",
 		:too_low=>"Your guess is too low",
 		:too_high=>"Your guess is too high"}

puts "What number is your guess?"
player_guess = gets.strip.to_i

def increment_guess_count(a)
 	increment_guess_count = a + 1
 	return increment_guess_count
end

x = 0

def guesses_left_meth(num_guessed)
	num_left = 3 - num_guessed
	return "You have #{num_left} guesses left"
end

loop do
	if player_guess == secret_number
		puts messages [:win]
 		exit
 	elsif player_guess > secret_number
 		puts messages [:too_high]
 		input = increment_guess_count(x)
 		x = x + 1
 		puts guesses_left_meth(input)
 		puts "What number is your guess?"
 		player_guess = gets.strip.to_i
 	elsif player_guess < secret_number
 		puts messages [:too_low]
 		input = increment_guess_count(x)
 		x = x + 1
 		puts guesses_left_meth(input)
 		puts "What number is your guess?"
 		player_guess = gets.strip.to_i
 	end
 	break if x == 2
 end
	
 puts messages [:lose]






# 1. Review your solution to Lab 03. Copy and Paste your solution to
#    this file.
#
# 2. Create a new method called `increment_guess_count` that takes
#    an integer parameter and increments it by 1.
#
# 3. Create a new method called `guesses_left` that calculates how many guesses 
#	 out of 3 the Player has left. The method should take one parameter that is the 
#	 number of guesses the player has guessed so far. Use this new method in your 
#	 code to tell the user how many guesses they have remaining. 
#
# 4. Make sure to remove your local variable `guesses_left` and use the
#    new method instead.
#
# 5. Make sure to comment your code so that you have appropriate
#    documentation for you and for the TAs grading your homework. :-)
#
###############################################################################
#
# Student's Solution
#
###############################################################################
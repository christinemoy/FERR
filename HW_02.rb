###############################################################################
#
# Introduction to Ruby on Rails
#
# Lab 02
#
# Purpose:
#
# Read the links below and complete the exercises in this file. This Lab
# is to test your knowledge of Variables and Conditionals which we
# learned in Lesson 02.
#
###############################################################################
#
# 1. Welcome users to your game. Let them know you are the creator. 
puts "Welcome to the Secret Number Game!"
puts "Created by Christine Moy"
#
# 2. Ask the user for their name and store it in a variable.
puts "What is your name?"
username = gets.strip
#
# 3. Personally greet the player by printing to the screen, "Hi player_name! 
#	 Let them know they have 3 guesses to guess the Secret Number between 1 and 10.

puts "Hi #{username}!"
puts "You have 3 guesses to guess the Secret Number between 1 and 10"
#
# 4. Create a new Integer variables called `guesses_left`, this will count
#    down how many more times the Player can guess. It's initial value should
#    be 3.
guesses_left = 3
#
# 5. Using String Interpolation, concatenate the variable `guesses_left`
#    into a String that tells the Player how many guesses they have left
#    and print it to the screen.
puts "#{username}, you have #{guesses_left} guesses left"

# 6. Create a new Integer variable called `secret_number` and set the value to
#    a number of your choosing between 1 and 10. This is the number that
#    our Player will try to guess.
secret_number = rand(10)
#
# 7. Ask the Player to make their first guess. (Remember to cast input from the Player into the appropriate
#    data type).
puts "What number is your guess?"
player_guess = gets.strip.to_i
#    
# 8.  Use a Conditional to find out if the Player has guessed the
#     correct number.
#
#     1. If they guessed correctly, tell them they won and exit the
#        script.
#	
#	  2. For an incorrect guess decrement the variable `guesses_left` by 1 and
#     print to the screen how many guesses the Player has left.
#
#     		1. If they guessed a number too low, tell them that they need to
#        	   guess higher on their next guess.
#
#     		2. If they guessed a number too high, tell them that they need to
#        	   guess lower on their next guess.
#		
# 9. Repeat the above process for a total of 3 times asking the Player
#     to make a guess and verify if the Player won.
#
# 10. If they do not make the correct guess after 3 tries, print that
#     the Player loses and what the `secret_number` was.
#
# 11. Make sure to add helpful comments to your code to document what
#     each section does.


if player_guess == secret_number
	puts "You won!"
	exit
elsif player_guess > secret_number && guesses_left > 0
	puts "The Secret Number is lower than your guess of #{player_guess}"
	guesses_left -= 1
	puts "You have #{guesses_left} guesses left"
	puts "What number is your guess?"
	player_guess = gets.strip.to_i
elsif player_guess < secret_number && guesses_left > 0
	puts "The Secret Number is higher than your guess of #{player_guess}"
	guesses_left -= 1
	puts "You have #{guesses_left} guesses left"
	puts "What number is your guess?"
	player_guess = gets.strip.to_i
else
	puts "You lose. The Secret Number was #{secret_number}."
end

if player_guess == secret_number
	puts "You won!"
	exit
elsif player_guess > secret_number && guesses_left > 0
	puts "The Secret Number is lower than your guess of #{player_guess}"
	guesses_left -= 1
	puts "You have #{guesses_left} guesses left"
	puts "What number is your guess?"
	player_guess = gets.strip.to_i
elsif player_guess < secret_number && guesses_left > 0
	puts "The Secret Number is higher than your guess of #{player_guess}"
	guesses_left -= 1
	puts "You have #{guesses_left} guesses left"
	puts "What number is your guess?"
	player_guess = gets.strip.to_i
else
	puts "You lose. The Secret Number was #{secret_number}."
end

if player_guess == secret_number
	puts "You won!"
	exit
else player_guess != secret_number && guesses_left > 0
	puts "You lose. The Secret Number was #{secret_number}."
end




###############################################################################
#
# Student's Solution
#
###############################################################################


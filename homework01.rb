# author: Lanya Butler
# homework01 GA BEWD
# September 2014

# 01. Using a while loop, write some code that sums the numbers from 1 to 10
# including 10 and prints the results to the screen.
def sum()
	result = 0
	i = 1
	while i <= 10
		result = result + i
		i = i + 1
	end
	puts result
end

# 02. Using a while loop, write some code that sums the numbers from 1 to n
# and prints the results to the screen, where n is a variable that you can set
# in the program.
def sumAgain(n)
	result = 0
	while n > 0 
		result = result + n
		n = n - 1
	end
	puts result
end

# 03. Print 10 usernames as Strings whose format is fakeuser_i, where i goes from
# 1 to 10. Your output should look like this fakeuser_1, fakeuser_2, etc...

def increment_name()
	i = 1
	while i <= 10
		puts "fakeuser_" + i.to_s
		i = i + 1
	end
end

# 04. Take the username code from Problem 3 and append the word 'even' to even 
# usernames and 'odd' to odd usernames. Your output should look like fakeuser_1_odd,
# fakeuser_2_even  

def odd_even_name()
	i = 1
	while i <= 10
		username = "fakeuser_" + i.to_s
		if i%2 == 0
			username = username + "_even"
		else 
			username = username + "_odd"
		end
		puts username
		i = i + 1
	end
end




sum()
increment_name()
sumAgain(10)
odd_even_name()
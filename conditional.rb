puts "Put in a number"
a = gets.chomp.to_i

# if a >= 0 && a <= 50
# 	puts "a is between 0 and 50"
# elsif a <= 100
# 	puts "a is between 50 and 100"
# else
# 	puts "a is above 100"
# end

case
when a < 0
	puts "please input between 0 and 100 number"
when a <= 50
	puts "a is between 0 and 50"
when a <= 100
	puts "a is between 50 and 100"
else
	puts "a is above 100"
end
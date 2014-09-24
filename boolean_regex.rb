def has_a_b?(string)
	if string =~ /b/
		puts "We have a match!"
	else
		puts "No match here."
	end
end

has_a_b?("ball")
has_a_b?("soley")
has_a_b?("powerball ball")
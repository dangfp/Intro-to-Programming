def match_characters(string)
	if string =~ /lab/
		puts string
	end
end

match_characters("laboratory")
match_characters("experiment")
match_characters("Pans Labyrinth")
match_characters("elaborate")
match_characters("polar bear")
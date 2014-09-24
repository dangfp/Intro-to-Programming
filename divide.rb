def divide(number, divisor)
	begin
		anwser = number / divisor
	rescue ZeroDivisionError => e
		puts e.message
	end
end

divide(15, 5)
divide(14, 0)
divide(33, 4)
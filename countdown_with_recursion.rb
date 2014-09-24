def countdown_with_recursion(number)
  if number <= 0
    puts number
  else
    puts number
    countdown_with_recursion(number-1)
  end
end

countdown_with_recursion(10)
countdown_with_recursion(20)
countdown_with_recursion(-3)
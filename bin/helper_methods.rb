def intro
  puts "WELCOME TO THE GAME OF THRONES"
  puts "Please answer the questions TRUTHFULLY by inputting the number that corresponds
  for that choice"
  puts "Winter is Coming"
  puts "INPUT play"
  answer = gets.chomp
  while answer == "play"
    new_quiz = Quiz.new
    new_quiz.logic_method
    puts "Wanna go again? (input play)"
    answer = gets.chomp
    if answer != "play"
      break
    end
  end
end




intro

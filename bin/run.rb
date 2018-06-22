require_relative '../config/environment'



def intro
  puts "
              ,---.                  ,---. ,_   ,--,--'.
              |  -'  ,-. ,-,-. ,-.   |   | |_   `- |   |-. ,-. ,-. ,-. ,-. ,-.
              |  ,-' ,-| | | | |-'   |   | |     , |   | | |   | | | | |-' `-.
              `---|  `-^ ' ' ' `-'   `---' |     `-'   ' ' '   `-' ' ' `-' `-'
               ,-.|                        '
               `-+'



".fg(177)
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% WINTER IS COMING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


".fg(152)

  puts "                         Please answer questions TRUTHFULLY".fg(87)
  puts "                      by inputting the number that corresponds".fg(166)
  puts  "                                   for that choice.".red.bold

puts "

"

puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

"
user = User.new
user.start_quiz

  puts "                                INPUT play to get started,".green
  puts "                                or anything else to quit,".magenta
  puts "                                 it's up to you really,".white
  puts "                                      I don't care:".cyan
  answer = gets.chomp
  while answer == "play"
    new_quiz = Quiz.new
    new_quiz.user_id = user.id
    new_quiz.logic_method
    new_quiz.save
    puts "Wanna go again? (input play to go again, or press 'Enter' to quit)".red
    answer = gets.chomp
    if answer != "play"
      break
    end
  end
end

intro

require_relative '../config/environment'



def intro
  puts "
              ,---.                  ,---. ,_   ,--,--'.
              |  -'  ,-. ,-,-. ,-.   |   | |_   `- |   |-. ,-. ,-. ,-. ,-. ,-.
              |  ,-' ,-| | | | |-'   |   | |     , |   | | |   | | | | |-' `-.
              `---|  `-^ ' ' ' `-'   `---' |     `-'   ' ' '   `-' ' ' `-' `-'
               ,-.|                        '
               `-+'



"
puts "%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% WINTER IS COMING %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


"

  puts "                         Please answer questions TRUTHFULLY"
  puts "                      by inputting the number that corresponds"
  puts  "                                   for that choice."

puts "

"

puts "----------------------------------------------------------------------------------------

"
user = User.new
user.start_quiz

  puts "                                INPUT play to get started,"
  puts "                                or anything else to quit,"
  puts "                                 it's up to you really,"
  puts "                                      I don't care:"
  answer = gets.chomp
  while answer == "play"
    new_quiz = Quiz.new
    new_quiz.user_id = user.id
    new_quiz.logic_method
    new_quiz.save
    puts "Wanna go again? (input play to go again, or press 'Enter' to quit)"
    answer = gets.chomp
    if answer != "play"
      break
    end
  end
end

intro

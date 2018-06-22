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
  puts "                                INPUT play to get started,"
  puts "                                or anything else to quit,"
  puts "                                 it's up to you really,"
  puts "                                      I don't care:"
  answer = gets.chomp
  while answer == "play"
    new_quiz = Quiz.new
    new_quiz.logic_method
    puts "Wanna go again? (input play to go again)"
    answer = gets.chomp
    if answer != "play"
      break
    end
  end
end

intro

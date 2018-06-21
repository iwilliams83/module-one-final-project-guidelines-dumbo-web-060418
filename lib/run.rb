# require_relative '../config/enviornment.rb'
# require 'pry'
# #GAME LOGIC
# user_point_total = 0
# question_1 = "What's your favorite season?"
# choice_11= "winter"
# choice_21 = "spring"
# choice_31 = "summer"
# choice_41 = "fall"
#
# question_2 = "What's your favorite color scheme?"
# choice_12 = "ocean"
# choice_22 = "sunset"
# choice_32 = "rainbow"
#
# question_3 = "Marvel or DC?"
# choice_13 = "marvel"
# choice_23 = "dc"
#
# question_4 = "Pick a superpower:"
# choice_14 = "invisibility"
# choice_24 = "flight"
# choice_34 = "invulnerability"
#
# question_5 = "What color is the dress?"
# choice_15 = "blue and black"
# choice_25 = 'white and gold'
#
# question_6 = "How do you eat cereal?"
# choice_16 = "milk first"
# choice_26 = "cereal first"
#
# question_7 = "Are you..."
# choice_17 = "left-handed"
# choice_27 = "right-handed"
#
# question_8 = "Are you a...?"
# choice_18 = "cat person"
# choice_28 = "dog person"
# choice_38 = "no pets"
#
# question_9 = "Is the earth round or flat?"
# choice_19 = "definitely flat"
# choice_29 = "definitely round"
# choice_39 = "definitely boxy"
#
# question_10 = "Is a hot dog a sandwich?"
# choice_110 = "yes, of course"
# choice_210 = "no, its a hotdog"
#
#
#
# def answer_for_question(question, choice_1, choice_2, choice_3, choice_4, user_point_total)
#   puts question
#   puts choice_1
#   puts choice_2
#   puts choice_3
#   puts choice_4
#   answer = gets.chomp
#   case answer
#   when choice_1
#     user_point_total -=1
#   when choice_2
#     user_point_total +=1
#   when choice_3
#     user_point_total -=1
#   when choice_4
#     user_point_total +=1
#   else
#     puts "Invalid, try again"
#   end
#
#   binding.pry
# end
#
# puts "Which Game of Thrones Character Are You?"
# answer_for_question(question_1, choice_11, choice_21, choice_31, choice_41, user_point_total)
# answer_for_question(question_2, choice)

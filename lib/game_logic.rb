q1 = "What's your favorite season?"
ans = ["(1)  Winter", "(2)  Spring", "(3)  Summer", "(4)  Fall"]

q2 = "What's your favorite color scheme?"
ans2 = ["(1) ocean", "(2) sunset", "(3) rainbow" ]

q3 = "Marvel or DC?"
ans3 = ["(1) marvel", "(2) dc"]

q4 = "Pick a superpower:"
ans4 = ["(1) invisibility", "(2) flight", "(3) invulnerability"]

q5 = "What color is the dress?"
ans5 = ["(1) blue and black", "(2) white and gold"]

q6 = "How do you eat cereal?"
ans6 = ["(1) milk first", "(2) cereal first"]

q7 = "Are you..."
ans7 = ["(1) left-handed", "(2) right-handed"]

q8 = "Are you a...?"
ans8 = ["(1) cat-person", "(2) dog-person", "(3) no pets"]

q9 = "Is the earth round or flat?"
ans9 = ["(1) definitely flat", "(2) definitely round", "(3) definitely boxy"]

q10 = "Is a hot dog a sandwich?"
ans10 = ["(1) yes, of course", "(2) no, it's a hotdog"]


question = [[q1, ans], [q2, ans2], [q3 ,ans3], [q4 ,ans4], [q5 ,ans5], [q6, ans6], [q7, ans7], [q8, ans8], [q9, ans9], [q10, ans10]]

i = 0
total = 0

puts ""

while i < question.length
  puts question[i][0]
  puts question[i][1]
  answer = (gets.chomp).to_i
  while answer < 1 || answer > (question[i][1]).length
    puts "Invalid input. Please enter a number between 1 and #{question[i][1].length}"
    answer = (gets.chomp).to_i
  end
    case question[i][1].length
    when 4
      if answer == 1
        total += 1
      elsif answer == 2
        total -= 1
      elsif answer == 3
        total += 2
      else
        total += 1
      end
    when 3
      if answer == 1
        total += 3
      elsif answer == 2
        total
      else
        total += 1
      end
    when 2
      if answer == 1
        total += 2
      else
        total += 3
      end
    end
  i+=1
end

puts "total = #{total}"

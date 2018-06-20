
# puts "What's your favorite season? Enter the number of your choice: "
# ans = ["(1)  Winter", "(2)  Spring", "(3)  Summer", "(4)  Fall"]
# puts ans
#
# user_input =  gets.chomp
#
# while !(1..ans.length).include? (user_input.to_i)
#   puts "INVALID INPUT. Please try again: "
#   user_input =  gets.chomp
# end

question = [['Q1', [1, 2, 3, 4]], ['Q2', [1, 2, 3]], ['Q3',[1, 2]], ['Q4',[1, 2, 3]], ['Q5',[1, 2, 3, 4]]]

i = 0
total = 0

while i < question.length
  puts question[i][0]
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

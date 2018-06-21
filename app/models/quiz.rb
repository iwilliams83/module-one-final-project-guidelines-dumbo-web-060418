class Quiz < ActiveRecord::Base
  has_many :questions
  has_many :characters

  def logic_method
    i = 0
    total = 0

    Question.all.each do |question|
      puts question.content

      puts question.answer1
      puts question.answer2
      puts question.answer3 unless question.answer3.nil?
      puts question.answer4 unless question.answer4.nil?
      answer = get_user_answer
      answer = check_answer(answer, question)

      if !question.answer4.nil?
         if answer == 1
           total += 1
         elsif answer == 2
           total -= 1
         elsif answer == 3
           total += 2
         else
           total += 1
         end
      elsif question.answer4.nil?
         if answer == 1
           total += 3
         elsif answer == 2
           total
         else
           total += 1
         end
      elsif question.answer.nil?
         if answer == 1
           total += 2
         else
           total += 3
         end
     else
     end

   end #do end

    puts "total = #{total}"

    if (1..16).include? (total)
      character = Character.find_by(id: total)
      puts
      puts "* * * * * * * * * * * *"
      puts
      puts "You are #{character.name.upcase}! You have a(n) #{character.personality} personality.\n\n"
      puts "#{character.description}"
      puts
      puts "* * * * * * * * * * * *"
      puts

    else
      if total < 1
        character = Character.find_by(id: 1)
        puts
        puts "* * * * * * * * * * * *"
        puts
        puts "You are #{character.name}! You have a(n) #{character.personality} personality.\n\n"
        puts "#{character.description}"
        puts
        puts "* * * * * * * * * * * *"
        puts
      elsif total > 16
        character = Character.find_by(id: 16)
        puts
        puts "* * * * * * * * * * * *"
        puts
        puts "You are #{character.name}! You have a(n) #{character.personality} personality.\n\n"
        puts "#{character.description}"
        puts
        puts "* * * * * * * * * * * *"
        puts
      end
    end
  end #def end

  def get_user_answer
    answer = gets.chomp.to_i
  end

  def check_answer(answer, question)
    if answer < 1 || answer > 4
      puts "Invalid answer, try again: "
      answer = get_user_answer
      check_answer(answer, question)
    elsif (answer > 2) && (question.answer3.nil?)
      puts "Invalid answer, try again: "
      answer = get_user_answer
      check_answer(answer, question)
    elsif (answer > 3) && (question.answer4.nil?)
      puts "Invalid answer, try again: "
      answer = get_user_answer
      check_answer(answer, question)
    else
      return answer
    end
  end
end #class end

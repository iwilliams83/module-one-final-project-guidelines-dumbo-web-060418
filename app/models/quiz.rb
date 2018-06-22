class Quiz < ActiveRecord::Base
  has_many :questions
  has_many :characters
  belongs_to :user

  def logic_method
    total = 0

    Question.all.each do |question|
      puts
      puts question.content.cyan

      puts question.answer1.red
      puts question.answer2.fg(154)
      puts question.answer3.blue unless question.answer3.nil?
      puts question.answer4.blue unless question.answer4.nil?
      answer = get_user_answer
      answer = check_answer(answer, question)

      #point system
      if !question.answer4.nil?
         if answer == 1
           total += 1
         elsif answer == 2
           total -= 1
         elsif answer == 3
           total += 2
         else
           total += 2
         end
      elsif question.answer4.nil?
         if answer == 1
           total -= 1
         elsif answer == 2
           total += 1
         else
           total -=2
         end
      elsif question.answer3.nil?
         if answer == 1
           total -= 2
         else
           total += 3
         end
     else
     end

   end # end 'do' block

    if (1..16).include? (total)
      character = Character.find_by(id: total)
      puts
      puts "* * * * * * * * * * * * * * * * * * * * * * ".cyan
      puts
      puts "You are #{character.name.upcase}! You have a(n) #{character.personality} personality.\n\n".white
      puts "#{character.description}".white
      puts
      puts "* * * * * * * * * * * * * * * * * * * * * * ".cyan
      puts

    else
      if total < 1
        character = Character.find_by(id: 1)
        puts
        puts "* * * * * * * * * * * * * * * * * * * * * * ".cyan
        puts
        puts "You are #{character.name.upcase}! You have a(n) #{character.personality} personality.\n\n".white
        puts "#{character.description}".white
        puts
        puts "* * * * * * * * * * * * * * * * * * * * * * ".cyan
        puts
      elsif total > 16
        character = Character.find_by(id: 16)
        puts
        puts "* * * * * * * * * * * * * * * * * * * * * * ".cyan
        puts
        puts "You are #{character.name.upcase}! You have a(n) #{character.personality} personality.\n\n".white
        puts "#{character.description}".white
        puts
        puts "* * * * * * * * * * * * * * * * * * * * * * ".cyan
        puts
      end
    end
    user = User.find_by(id: self.user_id)
    user.total = total
    user.save
    self.total = total
    self.save
  end
  def get_user_answer
    answer = gets.chomp.to_i
  end

  def check_answer(answer, question)
    if answer < 1 || answer > 4
      puts "Invalid answer. Please enter the number of your choice: ".magenta
      answer = get_user_answer
      check_answer(answer, question)
    elsif (answer > 2) && (question.answer3.nil?)
      puts "Invalid answer. Please enter the number of your choice: ".magenta
      answer = get_user_answer
      check_answer(answer, question)
    elsif (answer > 3) && (question.answer4.nil?)
      puts "Invalid answer. Please enter the number of your choice: ".magenta
      answer = get_user_answer
      check_answer(answer, question)
    else
      return answer
    end
  end
end # end class definition

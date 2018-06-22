class Quiz < ActiveRecord::Base
  has_many :questions
  has_many :characters
  belongs_to :user

  def logic_method

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
           self.total += 1
         elsif answer == 2
           self.total += 3
         elsif answer == 3
           self.total += 2
         else
           self.total += 4
         end
      elsif question.answer4.nil?
         if answer == 1
           self.total -= 1
         elsif answer == 2
           self.total += 1
         else
           self.total -=2
         end
      elsif question.answer3.nil?
         if answer == 1
           self.total -= 2
         else
           self.total += 3
         end
     else
     end
   end # end 'do' block

    if (1..16).include? (self.total)
      character = Character.find_by(id: self.total)
      puts
      puts
      puts "* * * * * * * * * * * * * * * * * * * * * * ".cyan
      puts
      puts
      puts
      puts "You are #{character.name.upcase}! You have a(n) #{character.personality} personality.\n\n"
      puts "#{character.description}"
      puts
      puts
      puts
      puts "* * * * * * * * * * * * * * * * * * * * * * "
      puts
      puts
      puts
    else
      if self.total < 1
        character = Character.find_by(id: 1)
        puts
        puts
        puts "* * * * * * * * * * * * * * * * * * * * * * "
        puts
        puts
        puts
        puts "You are #{character.name.upcase}! You have a(n) #{character.personality} personality.\n\n"
        puts "#{character.description}"
        puts
        puts
        puts
        puts "* * * * * * * * * * * * * * * * * * * * * * "
        puts
        puts
        puts
      elsif self.total > 16
        character = Character.find_by(id: 16)
        puts
        puts
        puts "* * * * * * * * * * * * * * * * * * * * * * "
        puts
        puts
        puts
        puts "You are #{character.name.upcase}! You have a(n) #{character.personality} personality.\n\n"
        puts "#{character.description}"
        puts
        puts
        puts
        puts "* * * * * * * * * * * * * * * * * * * * * * "
        puts
      end
    end
    user = User.find_by(id: self.user_id)
    user.total = self.total
    user.save

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

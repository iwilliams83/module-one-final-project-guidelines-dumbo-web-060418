class User < ActiveRecord::Base
  has_many :characters
  has_many :quizzes

  def start_quiz
    puts "Type in an alias to go by"
    self.alias = gets.chomp
    self.total = 0
    self.save
  end
end

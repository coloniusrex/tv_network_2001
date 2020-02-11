require './lib/character'

class Show
  attr_reader :show_name, :creator, :characters
  def initialize(show_name, creator, characters)
    @show_name = show_name
    @creator = creator
    @characters = characters
  end

  def total_salary
    total_salary = 0
    @characters.each do |character|
      total_salary += character.salary
    end
      total_salary
  end

  def highest_paid_actor
    highest_paid = @characters.max_by do |character|
      character.salary
    end
    highest_paid.actor
  end

  def actors
    @characters.map { |character| character.actor}
  end
end

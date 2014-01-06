class Student
  attr_reader :grade

  def initialize
    @grade = grades[2] 
  end

  def index
    grades.index(@grade) 
  end

  def study
    new_index = index - 1  
    if new_index < 0
      new_index = 0
    end
    @grade = grades.at(new_index) 
  end

  def slack_off
    new_index = index + 1
    if new_index > 4
      new_index = 4
    end
    @grade = grades.at(new_index) 
  end

  def grades
    ['A', 'B', 'C', 'D', 'F']
  end
end

class Department

  # def initialize(marketing:)
  #   @marketing
  # end


  attr_reader :department_name
  attr_reader :employees

  def initialize(department_name)
    @department_name = department_name
    @employees = []
  end

  def add_employee(name)
    @employees << name
  end

  def total_salary
    total = 0
    employees.each do|employee|
      total += employee.salary
    end
    return total

  end

  def raise_salary_of_all_employees_in_dept
    employees.each do |employee|
    @salary + 4000
    end
  end




end

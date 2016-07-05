class Employee

  # def initialize(marketing:)
  #   @marketing
  # end
  attr_reader :name
  attr_reader :email
  attr_reader :phone
  attr_reader :salary
  attr_reader :remark
  attr_reader :answer


  def initialize(name,email,phone,salary)
    @name = name
    @email = email
    @phone = phone
    @salary = salary
  end

  def add_remark(comment)
    @remark = comment
  end

  def satisfactory?(comment)
    @answer = comment
  end


  def  salary_after_raise
    @salary + 4000
  end





end

# employee_evaluation_test.rb

require "minitest/autorun"
require "./department"
require "./employee"

class DepartmentTest < Minitest::Test

  def test_department_exists
    assert Department
  end

  def test_employee_exist
    mila = Employee.new('Mila','milaburgessconway@gmail.com','410-578-6545', 56000)
    assert_equal('Mila', mila.name)
  end

  def test_add_employee_to_dept
    mila = Employee.new('Mila','milaburgessconway@gmail.com','410-578-6545', 56000)
    marketing = Department.new('marketing')
    marketing.add_employee(mila)
    assert_equal([mila],marketing.employees)
  end

  def test_employee_and_salary_exists
    meredith = Employee.new('Meredith Williams','meredithasmith@gmail.com','410-456-2347',48000)
    assert_equal('Meredith Williams', meredith.name)
    assert_equal(48000, meredith.salary)
  end

  def test_employee_email_phone
    ava = Employee.new('Ava Evans','avaevansm@gmail.com','917-459-3424', 70000)
    assert_equal('Ava Evans',ava.name)
    assert_equal('avaevansm@gmail.com',ava.email)
    assert_equal('917-459-3424',ava.phone)
  end

  def test_get_a_department_name
    sales = Department.new('sales')
    assert_equal('sales',sales.department_name)
  end

  def test_total_salary_of_all_employees_in_dept
    mila = Employee.new('Mila','milaburgessconway@gmail.com','410-578-6545', 56000)
    meredith = Employee.new('Meredith Williams','meredithasmith@gmail.com','410-456-2347',48000)

    it = Department.new('it')
    it.add_employee(mila)
    it.add_employee(meredith)
    assert_equal(104000,it.total_salary)
  end

  def test_review_text
    # MAKE OBJECTS
    mila = Employee.new('Mila','milaburgessconway@gmail.com','410-578-6545',
    56000,)


    # Rate mila
    mila.add_remark('Mila is the best cook ever.')

    # Make sure we get mila's remarks
    assert_equal(mila.remark,'Mila is the best cook ever.')
  end

  def test_satisfactory_or_not

    ava = Employee.new('Ava Evans','avaevansm@gmail.com','917-459-3424', 70000)
    # Satisfactory or not
    ava.satisfactory?('true')
    assert_equal(ava.answer,'true')

  end

  def test_salary_after_raise
    mila = Employee.new('Mila','milaburgessconway@gmail.com','410-578-6545',
    56000)
    assert_equal(60000,mila.salary_after_raise)
  end

  def test

  end

  def test_department_raise
    mila = Employee.new('Mila','milaburgessconway@gmail.com','410-578-6545', 56000)
    meredith = Employee.new('Meredith Williams','meredithasmith@gmail.com','410-456-2347',48000)

    it = Department.new('it')
    it.add_employee(mila)
    it.add_employee(meredith)

    assert_equal(112000,it.department_raise)
  end






end

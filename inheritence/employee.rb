class Employee
  attr_reader :name, :title, :salary, :boss, :employees
  def initialize(name, title, salary, boss = nil)
    @name = name
    @title = title
    @salary = salary
    @boss = boss
    @employees = nil
  end
  def bonus(multiplier)
    self.salary * multiplier
  end
end